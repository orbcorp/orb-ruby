# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#schedule_plan_change
    class SubscriptionSchedulePlanChangeParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute change_option
      #
      #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ChangeOption]
      required :change_option, enum: -> { Orb::SubscriptionSchedulePlanChangeParams::ChangeOption }

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice>, nil]
      optional :add_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice] },
               nil?: true

      # @!attribute align_billing_with_plan_change_date
      #   [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be
      #   aligned with the plan change's effective date.
      #
      #   @return [Boolean, nil]
      optional :align_billing_with_plan_change_date, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. If not specified, this
      #   defaults to the behavior configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_alignment
      #   Reset billing periods to be aligned with the plan change's effective date or
      #   start of the month. Defaults to `unchanged` which keeps subscription's existing
      #   billing cycle alignment.
      #
      #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      optional :billing_cycle_alignment,
               enum: -> { Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment },
               nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration, nil]
      optional :billing_cycle_anchor_configuration,
               -> { Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration },
               nil?: true

      # @!attribute change_date
      #   The date that the plan change should take effect. This parameter can only be
      #   passed if the `change_option` is `requested_date`. If a date with no time is
      #   passed, the plan change will happen at midnight in the customer's timezone.
      #
      #   @return [Time, nil]
      optional :change_date, Time, nil?: true

      # @!attribute coupon_redemption_code
      #   Redemption code to be used for this subscription. If the coupon cannot be found
      #   by its redemption code, or cannot be redeemed, an error response will be
      #   returned and the subscription creation or plan change will not be scheduled.
      #
      #   @return [String, nil]
      optional :coupon_redemption_code, String, nil?: true

      # @!attribute credits_overage_rate
      #   @deprecated
      #
      #   @return [Float, nil]
      optional :credits_overage_rate, Float, nil?: true

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscription's invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      optional :default_invoice_memo, String, nil?: true

      # @!attribute external_plan_id
      #   The external_plan_id of the plan that the given subscription should be switched
      #   to. Note that either this property or `plan_id` must be specified.
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute filter
      #   An additional filter to apply to usage queries. This filter must be expressed as
      #   a boolean
      #   [computed property](/extensibility/advanced-metrics#computed-properties). If
      #   null, usage queries will not include any additional filter.
      #
      #   @return [String, nil]
      optional :filter, String, nil?: true

      # @!attribute initial_phase_order
      #   The phase of the plan to start with
      #
      #   @return [Integer, nil]
      optional :initial_phase_order, Integer, nil?: true

      # @!attribute invoicing_threshold
      #   When this subscription's accrued usage reaches this threshold, an invoice will
      #   be issued for the subscription. If not specified, invoices will only be issued
      #   at the end of the billing period.
      #
      #   @return [String, nil]
      optional :invoicing_threshold, String, nil?: true

      # @!attribute net_terms
      #   The net terms determines the difference between the invoice date and the issue
      #   date for the invoice. If you intend the invoice to be due on issue, set this
      #   to 0. If not provided, this defaults to the value specified in the plan.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!attribute per_credit_overage_amount
      #   @deprecated
      #
      #   @return [Float, nil]
      optional :per_credit_overage_amount, Float, nil?: true

      # @!attribute plan_id
      #   The plan that the given subscription should be switched to. Note that either
      #   this property or `external_plan_id` must be specified.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute plan_version_number
      #   Specifies which version of the plan to change to. If null, the default version
      #   will be used.
      #
      #   @return [Integer, nil]
      optional :plan_version_number, Integer, nil?: true

      # @!attribute price_overrides
      #   @deprecated
      #
      #   Optionally provide a list of overrides for prices on the plan
      #
      #   @return [Array<Object>, nil]
      optional :price_overrides, Orb::Internal::Type::ArrayOf[Orb::Internal::Type::Unknown], nil?: true

      # @!attribute remove_adjustments
      #   Plan adjustments to be removed from the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil]
      optional :remove_adjustments,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]
               },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #   (Only available for accounts that have migrated off of legacy subscription
      #   overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]
               },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #   available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil]
      optional :replace_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice] },
               nil?: true

      # @!attribute trial_duration_days
      #   The duration of the trial period in days. If not provided, this defaults to the
      #   value specified in the plan. If `0` is provided, the trial on the plan will be
      #   skipped.
      #
      #   @return [Integer, nil]
      optional :trial_duration_days, Integer, nil?: true

      # @!attribute usage_customer_ids
      #   A list of customer IDs whose usage events will be aggregated and billed under
      #   this subscription. By default, a subscription only considers usage events
      #   associated with its attached customer's customer_id. When usage_customer_ids is
      #   provided, the subscription includes usage events from the specified customers
      #   only. Provided usage_customer_ids must be either the customer for this
      #   subscription itself, or any of that customer's children.
      #
      #   @return [Array<String>, nil]
      optional :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(change_option:, add_adjustments: nil, add_prices: nil, align_billing_with_plan_change_date: nil, auto_collection: nil, billing_cycle_alignment: nil, billing_cycle_anchor_configuration: nil, change_date: nil, coupon_redemption_code: nil, credits_overage_rate: nil, default_invoice_memo: nil, external_plan_id: nil, filter: nil, initial_phase_order: nil, invoicing_threshold: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, plan_version_number: nil, price_overrides: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, trial_duration_days: nil, usage_customer_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionSchedulePlanChangeParams} for more details.
      #
      #   @param change_option [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ChangeOption]
      #
      #   @param add_adjustments [Array<Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil] Additional adjustments to be added to the subscription. (Only available for acco
      #
      #   @param add_prices [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice>, nil] Additional prices to be added to the subscription. (Only available for accounts
      #
      #   @param align_billing_with_plan_change_date [Boolean, nil] [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be al
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #
      #   @param billing_cycle_alignment [Symbol, Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil] Reset billing periods to be aligned with the plan change's effective date or sta
      #
      #   @param billing_cycle_anchor_configuration [Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration, nil]
      #
      #   @param change_date [Time, nil] The date that the plan change should take effect. This parameter can only be pas
      #
      #   @param coupon_redemption_code [String, nil] Redemption code to be used for this subscription. If the coupon cannot be found
      #
      #   @param credits_overage_rate [Float, nil]
      #
      #   @param default_invoice_memo [String, nil] Determines the default memo on this subscription's invoices. Note that if this i
      #
      #   @param external_plan_id [String, nil] The external_plan_id of the plan that the given subscription should be switched
      #
      #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
      #
      #   @param initial_phase_order [Integer, nil] The phase of the plan to start with
      #
      #   @param invoicing_threshold [String, nil] When this subscription's accrued usage reaches this threshold, an invoice will b
      #
      #   @param net_terms [Integer, nil] The net terms determines the difference between the invoice date and the issue d
      #
      #   @param per_credit_overage_amount [Float, nil]
      #
      #   @param plan_id [String, nil] The plan that the given subscription should be switched to. Note that either thi
      #
      #   @param plan_version_number [Integer, nil] Specifies which version of the plan to change to. If null, the default version w
      #
      #   @param price_overrides [Array<Object>, nil] Optionally provide a list of overrides for prices on the plan
      #
      #   @param remove_adjustments [Array<Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil] Plan adjustments to be removed from the subscription. (Only available for accoun
      #
      #   @param remove_prices [Array<Orb::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil] Plan prices to be removed from the subscription. (Only available for accounts th
      #
      #   @param replace_adjustments [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil] Plan adjustments to be replaced with additional adjustments on the subscription.
      #
      #   @param replace_prices [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil] Plan prices to be replaced with additional prices on the subscription. (Only ava
      #
      #   @param trial_duration_days [Integer, nil] The duration of the trial period in days. If not provided, this defaults to the
      #
      #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module ChangeOption
        extend Orb::Internal::Type::Enum

        REQUESTED_DATE = :requested_date
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Maximum]
        required :adjustment,
                 union: -> {
                   Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment
                 }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription.
        #
        #   @return [Time, nil]
        optional :end_date, Time, nil?: true

        # @!attribute plan_phase_order
        #   The phase to add this adjustment to.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. If null, the adjustment will
        #   start when the phase or subscription starts.
        #
        #   @return [Time, nil]
        optional :start_date, Time, nil?: true

        # @!method initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment} for more details.
        #
        #   @param adjustment [Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Maximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param end_date [Time, nil] The end date of the adjustment interval. This is the date that the adjustment wi
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this adjustment to.
        #
        #   @param start_date [Time, nil] The start date of the adjustment interval. This is the date that the adjustment

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::PercentageDiscount
                  }

          variant :usage_discount,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::UsageDiscount }

          variant :amount_discount,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::AmountDiscount }

          variant :minimum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Minimum
                  }

          variant :maximum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Maximum
                  }

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param percentage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param usage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :amount_discount]
            required :adjustment_type, const: :amount_discount

            # @!attribute amount_discount
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class Minimum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Minimum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class Maximum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Maximum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param maximum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Maximum)]
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #   price.
        #
        #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount>, nil]
        optional :discounts,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount]
                 },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription. If null, billing will end when the phase or
        #   subscription ends.
        #
        #   @return [Time, nil]
        optional :end_date, Time, nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #   this price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   this price.
        #
        #   @return [String, nil]
        optional :minimum_amount, String, nil?: true

        # @!attribute plan_phase_order
        #   The phase to add this price to.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage, nil]
        optional :price, union: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!attribute start_date
        #   The start date of the price interval. This is the date that the price will start
        #   billing on the subscription. If null, billing will start when the phase or
        #   subscription starts.
        #
        #   @return [Time, nil]
        optional :start_date, Time, nil?: true

        # @!method initialize(allocation_price: nil, discounts: nil, end_date: nil, external_price_id: nil, maximum_amount: nil, minimum_amount: nil, plan_phase_order: nil, price: nil, price_id: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice} for more details.
        #
        #   @param allocation_price [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount>, nil] [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #
        #   @param end_date [Time, nil] The end date of the price interval. This is the date that the price will stop bi
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param maximum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #
        #   @param minimum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this price to.
        #
        #   @param price [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param start_date [Time, nil] The start date of the price interval. This is the date that the price will start

        # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::Internal::Type::Boolean

          # @!method initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice} for more
          #   details.
          #
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #
          #   @param expires_at_end_of_cadence [Boolean] Whether the allocated amount should expire at the end of the cadence or roll ove

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice#cadence
          module Cadence
            extend Orb::Internal::Type::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Discount < Orb::Internal::Type::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType }

          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String, nil]
          optional :amount_discount, String, nil?: true

          # @!attribute percentage_discount
          #   Only available if discount_type is `percentage`. This is a number between 0
          #   and 1.
          #
          #   @return [Float, nil]
          optional :percentage_discount, Float, nil?: true

          # @!attribute usage_discount
          #   Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
          #
          #   @return [Float, nil]
          optional :usage_discount, Float, nil?: true

          # @!method initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount} for more
          #   details.
          #
          #   @param discount_type [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType]
          #
          #   @param amount_discount [String, nil] Only available if discount_type is `amount`.
          #
          #   @param percentage_discount [Float, nil] Only available if discount_type is `percentage`. This is a number between 0 and
          #
          #   @param usage_discount [Float, nil] Only available if discount_type is `usage`. Number of usage units that this disc

          # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Discount#discount_type
          module DiscountType
            extend Orb::Internal::Type::Enum

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit }

          variant :package, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package }

          variant :matrix, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix }

          variant :tiered, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered }

          variant :tiered_bps, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps }

          variant :bps, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps }

          variant :bulk_bps, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps }

          variant :bulk, -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount }

          variant :tiered_package,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage
                  }

          variant :tiered_with_minimum,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum }

          variant :unit_with_percent,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent }

          variant :package_with_allocation,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation }

          variant :tiered_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration }

          variant :grouped_allocation,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation }

          variant :grouped_with_prorated_minimum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum
                  }

          variant :bulk_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration }

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing
                  }

          variant :cumulative_grouped_bulk,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk }

          variant :max_group_tiered_package,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage }

          variant :grouped_with_metered_minimum,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum }

          variant :matrix_with_display_name,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName }

          variant :grouped_tiered_package,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit]
            required :model_type, const: :unit

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::UnitConfig]
            required :unit_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::UnitConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package]
            required :model_type, const: :package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::PackageConfig]
            required :package_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package#package_config
            class PackageConfig < Orb::Internal::Type::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!method initialize(package_amount:, package_size:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix]
            required :model_type, const: :matrix

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered]
            required :model_type, const: :tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute first_unit
                #   Exclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Inclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
                #   @param first_unit [Float] Exclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_bps]
            required :model_type, const: :tiered_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Exclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Inclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Per-event basis point rate
                #
                #   @param minimum_amount [String] Exclusive tier starting value
                #
                #   @param maximum_amount [String, nil] Inclusive tier ending value
                #
                #   @param per_unit_maximum [String, nil] Per unit maximum to charge
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BpsConfig]
            required :bps_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BpsConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bps]
            required :model_type, const: :bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps#bps_config
            class BpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute bps
              #   Basis point take rate per event
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute per_unit_maximum
              #   Optional currency amount maximum to cap spend per event
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!method initialize(bps:, per_unit_maximum: nil)
              #   @param bps [Float] Basis point take rate per event
              #
              #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_bps]
            required :model_type, const: :bulk_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps} for more
            #   details.
            #
            #   @param bulk_bps_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Basis points to rate on
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute maximum_amount
                #   Upper bound for tier
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   The maximum amount to charge for any one event
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Basis points to rate on
                #
                #   @param maximum_amount [String, nil] Upper bound for tier
                #
                #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig]
            required :bulk_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk]
            required :model_type, const: :bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk} for more
            #   details.
            #
            #   @param bulk_config [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute maximum_units
                #   Upper bound for this tier
                #
                #   @return [Float, nil]
                optional :maximum_units, Float, nil?: true

                # @!method initialize(unit_amount:, maximum_units: nil)
                #   @param unit_amount [String] Amount per unit
                #
                #   @param maximum_units [Float, nil] Upper bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :threshold_total_amount]
            required :model_type, const: :threshold_total_amount

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute threshold_total_amount_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package]
            required :model_type, const: :tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_minimum]
            required :model_type, const: :tiered_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_percent]
            required :model_type, const: :unit_with_percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_percent_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package_with_allocation]
            required :model_type, const: :package_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_with_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_proration]
            required :model_type, const: :unit_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::Cadence
                     }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_allocation]
            required :model_type, const: :grouped_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_prorated_minimum]
            required :model_type, const: :grouped_with_prorated_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_with_proration]
            required :model_type, const: :bulk_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_unit_pricing]
            required :model_type, const: :scalable_matrix_with_unit_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_unit_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
            required :model_type, const: :scalable_matrix_with_tiered_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_tiered_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :cumulative_grouped_bulk]
            required :model_type, const: :cumulative_grouped_bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :max_group_tiered_package]
            required :model_type, const: :max_group_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_metered_minimum]
            required :model_type, const: :grouped_with_metered_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_display_name]
            required :model_type, const: :matrix_with_display_name

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered_package]
            required :model_type, const: :grouped_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedTieredPackage)]
        end
      end

      # Reset billing periods to be aligned with the plan change's effective date or
      # start of the month. Defaults to `unchanged` which keeps subscription's existing
      # billing cycle alignment.
      module BillingCycleAlignment
        extend Orb::Internal::Type::Enum

        UNCHANGED = :unchanged
        PLAN_CHANGE_DATE = :plan_change_date
        START_OF_MONTH = :start_of_month

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        #   {Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration} for
        #   more details.
        #
        #   @param day [Integer] The day of the month on which the billing cycle is anchored. If the maximum numb
        #
        #   @param month [Integer, nil] The month on which the billing cycle is anchored (e.g. a quarterly price anchore
        #
        #   @param year [Integer, nil] The year on which the billing cycle is anchored (e.g. a 2 year billing cycle anc
      end

      class RemoveAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment_id
        #   The id of the adjustment to remove on the subscription.
        #
        #   @return [String]
        required :adjustment_id, String

        # @!method initialize(adjustment_id:)
        #   @param adjustment_id [String] The id of the adjustment to remove on the subscription.
      end

      class RemovePrice < Orb::Internal::Type::BaseModel
        # @!attribute external_price_id
        #   The external price id of the price to remove on the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute price_id
        #   The id of the price to remove on the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(external_price_id: nil, price_id: nil)
        #   @param external_price_id [String, nil] The external price id of the price to remove on the subscription.
        #
        #   @param price_id [String, nil] The id of the price to remove on the subscription.
      end

      class ReplaceAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Maximum]
        required :adjustment,
                 union: -> { Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!method initialize(adjustment:, replaces_adjustment_id:)
        #   @param adjustment [Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Maximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param replaces_adjustment_id [String] The id of the adjustment on the plan to replace in the subscription.

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::PercentageDiscount
                  }

          variant :usage_discount,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::UsageDiscount
                  }

          variant :amount_discount,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::AmountDiscount
                  }

          variant :minimum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Minimum
                  }

          variant :maximum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Maximum
                  }

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param percentage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param usage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :amount_discount]
            required :adjustment_type, const: :amount_discount

            # @!attribute amount_discount
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class Minimum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Minimum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class Maximum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Maximum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param maximum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Minimum, Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Maximum)]
        end
      end

      class ReplacePrice < Orb::Internal::Type::BaseModel
        # @!attribute replaces_price_id
        #   The id of the price on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_price_id, String

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        #   replacement price.
        #
        #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount>, nil]
        optional :discounts,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount]
                 },
                 nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #   The new quantity of the price, if the price is a fixed price.
        #
        #   @return [Float, nil]
        optional :fixed_price_quantity, Float, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #   the replacement price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   the replacement price.
        #
        #   @return [String, nil]
        optional :minimum_amount, String, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage, nil]
        optional :price,
                 union: -> {
                   Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price
                 },
                 nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(replaces_price_id:, allocation_price: nil, discounts: nil, external_price_id: nil, fixed_price_quantity: nil, maximum_amount: nil, minimum_amount: nil, price: nil, price_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice} for more details.
        #
        #   @param replaces_price_id [String] The id of the price on the plan to replace in the subscription.
        #
        #   @param allocation_price [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount>, nil] [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the r
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param fixed_price_quantity [Float, nil] The new quantity of the price, if the price is a fixed price.
        #
        #   @param maximum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #
        #   @param minimum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #
        #   @param price [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.

        # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> {
                     Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence
                   }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::Internal::Type::Boolean

          # @!method initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice} for
          #   more details.
          #
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #
          #   @param expires_at_end_of_cadence [Boolean] Whether the allocated amount should expire at the end of the cadence or roll ove

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice#cadence
          module Cadence
            extend Orb::Internal::Type::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Discount < Orb::Internal::Type::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> {
                     Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType
                   }

          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String, nil]
          optional :amount_discount, String, nil?: true

          # @!attribute percentage_discount
          #   Only available if discount_type is `percentage`. This is a number between 0
          #   and 1.
          #
          #   @return [Float, nil]
          optional :percentage_discount, Float, nil?: true

          # @!attribute usage_discount
          #   Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
          #
          #   @return [Float, nil]
          optional :usage_discount, Float, nil?: true

          # @!method initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount} for more
          #   details.
          #
          #   @param discount_type [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType]
          #
          #   @param amount_discount [String, nil] Only available if discount_type is `amount`.
          #
          #   @param percentage_discount [Float, nil] Only available if discount_type is `percentage`. This is a number between 0 and
          #
          #   @param usage_discount [Float, nil] Only available if discount_type is `usage`. Number of usage units that this disc

          # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount#discount_type
          module DiscountType
            extend Orb::Internal::Type::Enum

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit }

          variant :package, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package }

          variant :matrix, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix }

          variant :tiered, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered }

          variant :tiered_bps,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps
                  }

          variant :bps, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps }

          variant :bulk_bps, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps }

          variant :bulk, -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount }

          variant :tiered_package,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage }

          variant :tiered_with_minimum,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum }

          variant :unit_with_percent,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent }

          variant :package_with_allocation,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation }

          variant :tiered_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration }

          variant :grouped_allocation,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation }

          variant :grouped_with_prorated_minimum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum
                  }

          variant :bulk_with_proration,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration }

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing
                  }

          variant :cumulative_grouped_bulk,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk }

          variant :max_group_tiered_package,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage }

          variant :grouped_with_metered_minimum,
                  -> {
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum
                  }

          variant :matrix_with_display_name,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName }

          variant :grouped_tiered_package,
                  -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit]
            required :model_type, const: :unit

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::UnitConfig]
            required :unit_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package]
            required :model_type, const: :package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::PackageConfig]
            required :package_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::PackageConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package#package_config
            class PackageConfig < Orb::Internal::Type::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!method initialize(package_amount:, package_size:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig
                     }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix]
            required :model_type, const: :matrix

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered]
            required :model_type, const: :tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute first_unit
                #   Exclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Inclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
                #   @param first_unit [Float] Exclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_bps]
            required :model_type, const: :tiered_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Exclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Inclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Per-event basis point rate
                #
                #   @param minimum_amount [String] Exclusive tier starting value
                #
                #   @param maximum_amount [String, nil] Inclusive tier ending value
                #
                #   @param per_unit_maximum [String, nil] Per unit maximum to charge
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BpsConfig]
            required :bps_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bps]
            required :model_type, const: :bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps#bps_config
            class BpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute bps
              #   Basis point take rate per event
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute per_unit_maximum
              #   Optional currency amount maximum to cap spend per event
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!method initialize(bps:, per_unit_maximum: nil)
              #   @param bps [Float] Basis point take rate per event
              #
              #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_bps]
            required :model_type, const: :bulk_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps} for
            #   more details.
            #
            #   @param bulk_bps_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Basis points to rate on
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute maximum_amount
                #   Upper bound for tier
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   The maximum amount to charge for any one event
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Basis points to rate on
                #
                #   @param maximum_amount [String, nil] Upper bound for tier
                #
                #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig]
            required :bulk_config,
                     -> { Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk]
            required :model_type, const: :bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk} for more
            #   details.
            #
            #   @param bulk_config [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute maximum_units
                #   Upper bound for this tier
                #
                #   @return [Float, nil]
                optional :maximum_units, Float, nil?: true

                # @!method initialize(unit_amount:, maximum_units: nil)
                #   @param unit_amount [String] Amount per unit
                #
                #   @param maximum_units [Float, nil] Upper bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :threshold_total_amount]
            required :model_type, const: :threshold_total_amount

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute threshold_total_amount_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package]
            required :model_type, const: :tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_minimum]
            required :model_type, const: :tiered_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_percent]
            required :model_type, const: :unit_with_percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_percent_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package_with_allocation]
            required :model_type, const: :package_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_with_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_proration]
            required :model_type, const: :unit_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::Cadence
                     }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_allocation]
            required :model_type, const: :grouped_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_prorated_minimum]
            required :model_type, const: :grouped_with_prorated_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_with_proration]
            required :model_type, const: :bulk_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_unit_pricing]
            required :model_type, const: :scalable_matrix_with_unit_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_unit_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
            required :model_type, const: :scalable_matrix_with_tiered_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_tiered_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :cumulative_grouped_bulk]
            required :model_type, const: :cumulative_grouped_bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :max_group_tiered_package]
            required :model_type, const: :max_group_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_metered_minimum]
            required :model_type, const: :grouped_with_metered_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_display_name]
            required :model_type, const: :matrix_with_display_name

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered_package]
            required :model_type, const: :grouped_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!method initialize(cadence:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Unit, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Package, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Matrix, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Tiered, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkBps, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Bulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithPercent, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::PackageWithAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::UnitWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedAllocation, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithProration, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedTieredPackage)]
        end
      end
    end
  end
end
