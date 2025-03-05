# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionSchedulePlanChangeParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute change_option
      #
      #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption]
      required :change_option, enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption }

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the subscription. (Only available for
      #     accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::AddSubscriptionAdjustmentParams>, nil]
      optional :add_adjustments, -> { Orb::ArrayOf[Orb::Models::AddSubscriptionAdjustmentParams] }, nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #     that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::AddSubscriptionPriceParams>, nil]
      optional :add_prices, -> { Orb::ArrayOf[Orb::Models::AddSubscriptionPriceParams] }, nil?: true

      # @!attribute align_billing_with_plan_change_date
      #   [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be
      #     aligned with the plan change's effective date.
      #
      #   @return [Boolean, nil]
      optional :align_billing_with_plan_change_date, Orb::BooleanModel, nil?: true

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #     charged with the saved payment method on the due date. If not specified, this
      #     defaults to the behavior configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::BooleanModel, nil?: true

      # @!attribute billing_cycle_alignment
      #   Reset billing periods to be aligned with the plan change's effective date or
      #     start of the month. Defaults to `unchanged` which keeps subscription's existing
      #     billing cycle alignment.
      #
      #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      optional :billing_cycle_alignment,
               enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment },
               nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::BillingCycleAnchorConfigurationModel, nil]
      optional :billing_cycle_anchor_configuration,
               -> { Orb::Models::BillingCycleAnchorConfigurationModel },
               nil?: true

      # @!attribute change_date
      #   The date that the plan change should take effect. This parameter can only be
      #     passed if the `change_option` is `requested_date`. If a date with no time is
      #     passed, the plan change will happen at midnight in the customer's timezone.
      #
      #   @return [Time, nil]
      optional :change_date, Time, nil?: true

      # @!attribute coupon_redemption_code
      #   Redemption code to be used for this subscription. If the coupon cannot be found
      #     by its redemption code, or cannot be redeemed, an error response will be
      #     returned and the subscription creation or plan change will not be scheduled.
      #
      #   @return [String, nil]
      optional :coupon_redemption_code, String, nil?: true

      # @!attribute credits_overage_rate
      #
      #   @return [Float, nil]
      optional :credits_overage_rate, Float, nil?: true

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscription's invoices. Note that if this
      #     is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      optional :default_invoice_memo, String, nil?: true

      # @!attribute external_plan_id
      #   The external_plan_id of the plan that the given subscription should be switched
      #     to. Note that either this property or `plan_id` must be specified.
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute filter
      #   An additional filter to apply to usage queries. This filter must be expressed as
      #     a boolean
      #     [computed property](/extensibility/advanced-metrics#computed-properties). If
      #     null, usage queries will not include any additional filter.
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
      #     be issued for the subscription. If not specified, invoices will only be issued
      #     at the end of the billing period.
      #
      #   @return [String, nil]
      optional :invoicing_threshold, String, nil?: true

      # @!attribute net_terms
      #   The net terms determines the difference between the invoice date and the issue
      #     date for the invoice. If you intend the invoice to be due on issue, set this
      #     to 0. If not provided, this defaults to the value specified in the plan.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!attribute per_credit_overage_amount
      #
      #   @return [Float, nil]
      optional :per_credit_overage_amount, Float, nil?: true

      # @!attribute plan_id
      #   The plan that the given subscription should be switched to. Note that either
      #     this property or `external_plan_id` must be specified.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute plan_version_number
      #   Specifies which version of the plan to change to. If null, the default version
      #     will be used.
      #
      #   @return [Integer, nil]
      optional :plan_version_number, Integer, nil?: true

      # @!attribute price_overrides
      #   Optionally provide a list of overrides for prices on the plan
      #
      #   @return [Array<Object>, nil]
      optional :price_overrides, Orb::ArrayOf[Orb::Unknown], nil?: true

      # @!attribute remove_adjustments
      #   Plan adjustments to be removed from the subscription. (Only available for
      #     accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::RemoveSubscriptionAdjustmentParams>, nil]
      optional :remove_adjustments,
               -> { Orb::ArrayOf[Orb::Models::RemoveSubscriptionAdjustmentParams] },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #     that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::RemoveSubscriptionPriceParams>, nil]
      optional :remove_prices, -> { Orb::ArrayOf[Orb::Models::RemoveSubscriptionPriceParams] }, nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #     (Only available for accounts that have migrated off of legacy subscription
      #     overrides)
      #
      #   @return [Array<Orb::Models::ReplaceSubscriptionAdjustmentParams>, nil]
      optional :replace_adjustments,
               -> { Orb::ArrayOf[Orb::Models::ReplaceSubscriptionAdjustmentParams] },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #     available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::ReplaceSubscriptionPriceParams>, nil]
      optional :replace_prices, -> { Orb::ArrayOf[Orb::Models::ReplaceSubscriptionPriceParams] }, nil?: true

      # @!attribute trial_duration_days
      #   The duration of the trial period in days. If not provided, this defaults to the
      #     value specified in the plan. If `0` is provided, the trial on the plan will be
      #     skipped.
      #
      #   @return [Integer, nil]
      optional :trial_duration_days, Integer, nil?: true

      # @!attribute usage_customer_ids
      #   A list of customer IDs whose usage events will be aggregated and billed under
      #     this subscription. By default, a subscription only considers usage events
      #     associated with its attached customer's customer_id. When usage_customer_ids is
      #     provided, the subscription includes usage events from the specified customers
      #     only. Provided usage_customer_ids must be either the customer for this
      #     subscription itself, or any of that customer's children.
      #
      #   @return [Array<String>, nil]
      optional :usage_customer_ids, Orb::ArrayOf[String], nil?: true

      # @!parse
      #   # @param change_option [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption]
      #   # @param add_adjustments [Array<Orb::Models::AddSubscriptionAdjustmentParams>, nil]
      #   # @param add_prices [Array<Orb::Models::AddSubscriptionPriceParams>, nil]
      #   # @param align_billing_with_plan_change_date [Boolean, nil]
      #   # @param auto_collection [Boolean, nil]
      #   # @param billing_cycle_alignment [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      #   # @param billing_cycle_anchor_configuration [Orb::Models::BillingCycleAnchorConfigurationModel, nil]
      #   # @param change_date [Time, nil]
      #   # @param coupon_redemption_code [String, nil]
      #   # @param credits_overage_rate [Float, nil]
      #   # @param default_invoice_memo [String, nil]
      #   # @param external_plan_id [String, nil]
      #   # @param filter [String, nil]
      #   # @param initial_phase_order [Integer, nil]
      #   # @param invoicing_threshold [String, nil]
      #   # @param net_terms [Integer, nil]
      #   # @param per_credit_overage_amount [Float, nil]
      #   # @param plan_id [String, nil]
      #   # @param plan_version_number [Integer, nil]
      #   # @param price_overrides [Array<Object>, nil]
      #   # @param remove_adjustments [Array<Orb::Models::RemoveSubscriptionAdjustmentParams>, nil]
      #   # @param remove_prices [Array<Orb::Models::RemoveSubscriptionPriceParams>, nil]
      #   # @param replace_adjustments [Array<Orb::Models::ReplaceSubscriptionAdjustmentParams>, nil]
      #   # @param replace_prices [Array<Orb::Models::ReplaceSubscriptionPriceParams>, nil]
      #   # @param trial_duration_days [Integer, nil]
      #   # @param usage_customer_ids [Array<String>, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     change_option:,
      #     add_adjustments: nil,
      #     add_prices: nil,
      #     align_billing_with_plan_change_date: nil,
      #     auto_collection: nil,
      #     billing_cycle_alignment: nil,
      #     billing_cycle_anchor_configuration: nil,
      #     change_date: nil,
      #     coupon_redemption_code: nil,
      #     credits_overage_rate: nil,
      #     default_invoice_memo: nil,
      #     external_plan_id: nil,
      #     filter: nil,
      #     initial_phase_order: nil,
      #     invoicing_threshold: nil,
      #     net_terms: nil,
      #     per_credit_overage_amount: nil,
      #     plan_id: nil,
      #     plan_version_number: nil,
      #     price_overrides: nil,
      #     remove_adjustments: nil,
      #     remove_prices: nil,
      #     replace_adjustments: nil,
      #     replace_prices: nil,
      #     trial_duration_days: nil,
      #     usage_customer_ids: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case change_option
      # in :requested_date
      #   # ...
      # in :end_of_subscription_term
      #   # ...
      # in :immediate
      #   # ...
      # end
      # ```
      class ChangeOption < Orb::Enum
        REQUESTED_DATE = :requested_date
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # Reset billing periods to be aligned with the plan change's effective date or
      #   start of the month. Defaults to `unchanged` which keeps subscription's existing
      #   billing cycle alignment.
      #
      # @example
      # ```ruby
      # case billing_cycle_alignment
      # in :unchanged
      #   # ...
      # in :plan_change_date
      #   # ...
      # in :start_of_month
      #   # ...
      # end
      # ```
      class BillingCycleAlignment < Orb::Enum
        UNCHANGED = :unchanged
        PLAN_CHANGE_DATE = :plan_change_date
        START_OF_MONTH = :start_of_month

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
