# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#schedule_plan_change
    class SubscriptionSchedulePlanChangeParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute change_option
      #
      #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption]
      required :change_option, enum: -> { Orb::SubscriptionSchedulePlanChangeParams::ChangeOption }

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice>, nil]
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
      #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      optional :billing_cycle_alignment,
               enum: -> { Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment },
               nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::BillingCycleAnchorConfiguration, nil]
      optional :billing_cycle_anchor_configuration, -> { Orb::BillingCycleAnchorConfiguration }, nil?: true

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
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil]
      optional :remove_adjustments,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]
               },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #   (Only available for accounts that have migrated off of legacy subscription
      #   overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]
               },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #   available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil]
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
      #   @param change_option [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption]
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil] Additional adjustments to be added to the subscription. (Only available for acco
      #
      #   @param add_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice>, nil] Additional prices to be added to the subscription. (Only available for accounts
      #
      #   @param align_billing_with_plan_change_date [Boolean, nil] [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be al
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #
      #   @param billing_cycle_alignment [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil] Reset billing periods to be aligned with the plan change's effective date or sta
      #
      #   @param billing_cycle_anchor_configuration [Orb::Models::BillingCycleAnchorConfiguration, nil]
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
      #   @param remove_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil] Plan adjustments to be removed from the subscription. (Only available for accoun
      #
      #   @param remove_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil] Plan prices to be removed from the subscription. (Only available for accounts th
      #
      #   @param replace_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil] Plan adjustments to be replaced with additional adjustments on the subscription.
      #
      #   @param replace_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil] Plan prices to be replaced with additional prices on the subscription. (Only ava
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
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
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
        #   {Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment} for more
        #   details.
        #
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param end_date [Time, nil] The end date of the adjustment interval. This is the date that the adjustment wi
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this adjustment to.
        #
        #   @param start_date [Time, nil] The start date of the adjustment interval. This is the date that the adjustment

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount, -> { Orb::NewPercentageDiscount }

          variant :usage_discount, -> { Orb::NewUsageDiscount }

          variant :amount_discount, -> { Orb::NewAmountDiscount }

          variant :minimum, -> { Orb::NewMinimum }

          variant :maximum, -> { Orb::NewMaximum }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum)]
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::NewAllocationPrice, nil]
        optional :allocation_price, -> { Orb::NewAllocationPrice }, nil?: true

        # @!attribute discounts
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #   price.
        #
        #   @return [Array<Orb::Models::DiscountOverride>, nil]
        optional :discounts, -> { Orb::Internal::Type::ArrayOf[Orb::DiscountOverride] }, nil?: true

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
        #   @return [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, nil]
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
        #   {Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice} for more details.
        #
        #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::Models::DiscountOverride>, nil] [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
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
        #   @param price [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param start_date [Time, nil] The start date of the price interval. This is the date that the price will start

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewSubscriptionUnitPrice }

          variant :package, -> { Orb::NewSubscriptionPackagePrice }

          variant :matrix, -> { Orb::NewSubscriptionMatrixPrice }

          variant :tiered, -> { Orb::NewSubscriptionTieredPrice }

          variant :tiered_bps, -> { Orb::NewSubscriptionTieredBPSPrice }

          variant :bps, -> { Orb::NewSubscriptionBPSPrice }

          variant :bulk_bps, -> { Orb::NewSubscriptionBulkBPSPrice }

          variant :bulk, -> { Orb::NewSubscriptionBulkPrice }

          variant :threshold_total_amount, -> { Orb::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent, -> { Orb::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation, -> { Orb::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration, -> { Orb::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration, -> { Orb::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration, -> { Orb::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package, -> { Orb::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name, -> { Orb::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewSubscriptionGroupedTieredPackagePrice }

          variant :matrix_with_allocation, -> { Orb::NewSubscriptionMatrixWithAllocationPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewSubscriptionTieredPackageWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewSubscriptionGroupedTieredPrice }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice)]
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
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
        required :adjustment,
                 union: -> { Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!method initialize(adjustment:, replaces_adjustment_id:)
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param replaces_adjustment_id [String] The id of the adjustment on the plan to replace in the subscription.

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount, -> { Orb::NewPercentageDiscount }

          variant :usage_discount, -> { Orb::NewUsageDiscount }

          variant :amount_discount, -> { Orb::NewAmountDiscount }

          variant :minimum, -> { Orb::NewMinimum }

          variant :maximum, -> { Orb::NewMaximum }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum)]
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
        #   @return [Orb::Models::NewAllocationPrice, nil]
        optional :allocation_price, -> { Orb::NewAllocationPrice }, nil?: true

        # @!attribute discounts
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        #   replacement price.
        #
        #   @return [Array<Orb::Models::DiscountOverride>, nil]
        optional :discounts, -> { Orb::Internal::Type::ArrayOf[Orb::DiscountOverride] }, nil?: true

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
        #   @return [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, nil]
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
        #   {Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice} for more
        #   details.
        #
        #   @param replaces_price_id [String] The id of the price on the plan to replace in the subscription.
        #
        #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::Models::DiscountOverride>, nil] [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the r
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param fixed_price_quantity [Float, nil] The new quantity of the price, if the price is a fixed price.
        #
        #   @param maximum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #
        #   @param minimum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #
        #   @param price [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewSubscriptionUnitPrice }

          variant :package, -> { Orb::NewSubscriptionPackagePrice }

          variant :matrix, -> { Orb::NewSubscriptionMatrixPrice }

          variant :tiered, -> { Orb::NewSubscriptionTieredPrice }

          variant :tiered_bps, -> { Orb::NewSubscriptionTieredBPSPrice }

          variant :bps, -> { Orb::NewSubscriptionBPSPrice }

          variant :bulk_bps, -> { Orb::NewSubscriptionBulkBPSPrice }

          variant :bulk, -> { Orb::NewSubscriptionBulkPrice }

          variant :threshold_total_amount, -> { Orb::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent, -> { Orb::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation, -> { Orb::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration, -> { Orb::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration, -> { Orb::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration, -> { Orb::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package, -> { Orb::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name, -> { Orb::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewSubscriptionGroupedTieredPackagePrice }

          variant :matrix_with_allocation, -> { Orb::NewSubscriptionMatrixWithAllocationPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewSubscriptionTieredPackageWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewSubscriptionGroupedTieredPrice }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionTieredBPSPrice, Orb::Models::NewSubscriptionBPSPrice, Orb::Models::NewSubscriptionBulkBPSPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice)]
        end
      end
    end
  end
end
