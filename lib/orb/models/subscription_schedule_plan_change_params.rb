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
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #     that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice>, nil]
      optional :add_prices,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice] },
               nil?: true

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
      #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration, nil]
      optional :billing_cycle_anchor_configuration,
               -> { Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration },
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
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil]
      optional :remove_adjustments,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment] },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #     that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #     (Only available for accounts that have migrated off of legacy subscription
      #     overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment] },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #     available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil]
      optional :replace_prices,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice] },
               nil?: true

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
      #   # @param add_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil]
      #   # @param add_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice>, nil]
      #   # @param align_billing_with_plan_change_date [Boolean, nil]
      #   # @param auto_collection [Boolean, nil]
      #   # @param billing_cycle_alignment [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      #   # @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration, nil]
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
      #   # @param remove_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil]
      #   # @param remove_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil]
      #   # @param replace_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil]
      #   # @param replace_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil]
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

      class AddAdjustment < Orb::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #     will stop affecting prices on the subscription.
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
        #     will start affecting prices on the subscription. If null, the adjustment will
        #     start when the phase or subscription starts.
        #
        #   @return [Time, nil]
        optional :start_date, Time, nil?: true

        # @!parse
        #   # @param adjustment [Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum]
        #   # @param end_date [Time, nil]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param start_date [Time, nil]
        #   #
        #   def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The definition of a new adjustment to create and add to the subscription.
        #
        # @example
        # ```ruby
        # case adjustment
        # in {
        #   adjustment_type: "percentage_discount",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   percentage_discount: Float,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount ...
        # in {
        #   adjustment_type: "usage_discount",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   usage_discount: Float,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount ...
        # in {
        #   adjustment_type: "amount_discount",
        #   amount_discount: String,
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount ...
        # in {
        #   adjustment_type: "minimum",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   item_id: String,
        #   minimum_amount: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum ...
        # in {
        #   adjustment_type: "maximum",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   maximum_amount: String,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case adjustment
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum
        #   # ...
        # end
        # ```
        class Adjustment < Orb::Union
          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum }

          variant :maximum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum }

          class NewPercentageDiscount < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param percentage_discount [Float]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :percentage_discount]
            #   #
            #   def initialize(
            #     applies_to_price_ids:,
            #     percentage_discount:,
            #     is_invoice_level: nil,
            #     adjustment_type: :percentage_discount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewUsageDiscount < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param usage_discount [Float]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :usage_discount]
            #   #
            #   def initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewAmountDiscount < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param amount_discount [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :amount_discount]
            #   #
            #   def initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewMinimum < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param item_id [String]
            #   # @param minimum_amount [String]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :minimum]
            #   #
            #   def initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewMaximum < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param maximum_amount [String]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :maximum]
            #   #
            #   def initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end

      class AddPrice < Orb::BaseModel
        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #     price.
        #
        #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount>, nil]
        optional :discounts,
                 -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount] },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #     billing on the subscription. If null, billing will end when the phase or
        #     subscription ends.
        #
        #   @return [Time, nil]
        optional :end_date, Time, nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute maximum_amount
        #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #     this price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #     this price.
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
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        optional :price,
                 union: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price },
                 nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!attribute start_date
        #   The start date of the price interval. This is the date that the price will start
        #     billing on the subscription. If null, billing will start when the phase or
        #     subscription starts.
        #
        #   @return [Time, nil]
        optional :start_date, Time, nil?: true

        # @!parse
        #   # @param allocation_price [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice, nil]
        #   # @param discounts [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount>, nil]
        #   # @param end_date [Time, nil]
        #   # @param external_price_id [String, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        #   # @param price_id [String, nil]
        #   # @param start_date [Time, nil]
        #   #
        #   def initialize(
        #     allocation_price: nil,
        #     discounts: nil,
        #     end_date: nil,
        #     external_price_id: nil,
        #     maximum_amount: nil,
        #     minimum_amount: nil,
        #     plan_phase_order: nil,
        #     price: nil,
        #     price_id: nil,
        #     start_date: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        class AllocationPrice < Orb::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #     this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #     over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::BooleanModel

          # @!parse
          #   # The definition of a new allocation price to create and add to the subscription.
          #   #
          #   # @param amount [String]
          #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::AllocationPrice::Cadence]
          #   # @param currency [String]
          #   # @param expires_at_end_of_cadence [Boolean]
          #   #
          #   def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence at which to allocate the amount to the customer.
          #
          # @example
          # ```ruby
          # case cadence
          # in :one_time
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :semi_annual
          #   # ...
          # in :annual
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class Discount < Orb::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType }

          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String, nil]
          optional :amount_discount, String, nil?: true

          # @!attribute percentage_discount
          #   Only available if discount_type is `percentage`. This is a number between 0
          #     and 1.
          #
          #   @return [Float, nil]
          optional :percentage_discount, Float, nil?: true

          # @!attribute usage_discount
          #   Only available if discount_type is `usage`. Number of usage units that this
          #     discount is for
          #
          #   @return [Float, nil]
          optional :usage_discount, Float, nil?: true

          # @!parse
          #   # @param discount_type [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount::DiscountType]
          #   # @param amount_discount [String, nil]
          #   # @param percentage_discount [Float, nil]
          #   # @param usage_discount [Float, nil]
          #   #
          #   def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case discount_type
          # in :percentage
          #   # ...
          # in :usage
          #   # ...
          # in :amount
          #   # ...
          # end
          # ```
          class DiscountType < Orb::Enum
            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @abstract
        #
        # The definition of a new price to create and add to the subscription.
        #
        # @example
        # ```ruby
        # case price
        # in {
        #   model_type: "unit",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice ...
        # in {
        #   model_type: "package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice ...
        # in {
        #   model_type: "matrix",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence,
        #   item_id: String,
        #   matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice ...
        # in {
        #   model_type: "tiered",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice ...
        # in {
        #   model_type: "tiered_bps",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice ...
        # in {
        #   model_type: "bps",
        #   bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice ...
        # in {
        #   model_type: "bulk_bps",
        #   bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice ...
        # in {
        #   model_type: "bulk",
        #   bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice ...
        # in {
        #   model_type: "threshold_total_amount",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice ...
        # in {
        #   model_type: "tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice ...
        # in {
        #   model_type: "tiered_with_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice ...
        # in {
        #   model_type: "unit_with_percent",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice ...
        # in {
        #   model_type: "package_with_allocation",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice ...
        # in {
        #   model_type: "tiered_with_proration",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice ...
        # in {
        #   model_type: "unit_with_proration",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice ...
        # in {
        #   model_type: "grouped_allocation",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence,
        #   grouped_allocation_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice ...
        # in {
        #   model_type: "grouped_with_prorated_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence,
        #   grouped_with_prorated_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice ...
        # in {
        #   model_type: "bulk_with_proration",
        #   bulk_with_proration_config: ^(Orb::HashOf[Orb::Unknown]),
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice ...
        # in {
        #   model_type: "scalable_matrix_with_unit_pricing",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice ...
        # in {
        #   model_type: "scalable_matrix_with_tiered_pricing",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice ...
        # in {
        #   model_type: "cumulative_grouped_bulk",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence,
        #   cumulative_grouped_bulk_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice ...
        # in {
        #   model_type: "max_group_tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence,
        #   item_id: String,
        #   max_group_tiered_package_config: ^(Orb::HashOf[Orb::Unknown])
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice ...
        # in {
        #   model_type: "grouped_with_metered_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence,
        #   grouped_with_metered_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice ...
        # in {
        #   model_type: "matrix_with_display_name",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence,
        #   item_id: String,
        #   matrix_with_display_name_config: ^(Orb::HashOf[Orb::Unknown])
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice ...
        # in {
        #   model_type: "grouped_tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence,
        #   grouped_tiered_package_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case price
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
        #   # ...
        # end
        # ```
        class Price < Orb::Union
          discriminator :model_type

          variant :unit,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice }

          variant :matrix,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice }

          variant :tiered,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice }

          variant :bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice }

          variant :bulk,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice }

          class NewSubscriptionUnitPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class UnitConfig < Orb::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!parse
              #   # @param unit_amount [String]
              #   #
              #   def initialize(unit_amount:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class PackageConfig < Orb::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #     usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!parse
              #   # @param package_amount [String]
              #   # @param package_size [Integer]
              #   #
              #   def initialize(package_amount:, package_size:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence]
            #   # @param item_id [String]
            #   # @param matrix_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :matrix]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     matrix_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :matrix,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class MatrixConfig < Orb::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!parse
              #   # @param default_unit_amount [String]
              #   # @param dimensions [Array<String, nil>]
              #   # @param matrix_values [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              #   #
              #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class MatrixValue < Orb::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #     instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!parse
                #   # @param dimension_values [Array<String, nil>]
                #   # @param unit_amount [String]
                #   #
                #   def initialize(dimension_values:, unit_amount:, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class TieredConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute first_unit
                #   Inclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Exclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!parse
                #   # @param first_unit [Float]
                #   # @param unit_amount [String]
                #   # @param last_unit [Float, nil]
                #   #
                #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_bps]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_bps_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class TieredBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #     tiers
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Inclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Exclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!parse
                #   # @param bps [Float]
                #   # @param minimum_amount [String]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bps]
            #   #
            #   def initialize(
            #     bps_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BpsConfig < Orb::BaseModel
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

              # @!parse
              #   # @param bps [Float]
              #   # @param per_unit_maximum [String, nil]
              #   #
              #   def initialize(bps:, per_unit_maximum: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk_bps]
            #   #
            #   def initialize(
            #     bulk_bps_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #     tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
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

                # @!parse
                #   # @param bps [Float]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_config [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk]
            #   #
            #   def initialize(
            #     bulk_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkConfig < Orb::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
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

                # @!parse
                #   # @param unit_amount [String]
                #   # @param maximum_units [Float, nil]
                #   #
                #   def initialize(unit_amount:, maximum_units: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence }

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
            required :threshold_total_amount_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :threshold_total_amount]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     threshold_total_amount_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :threshold_total_amount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence }

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
            required :tiered_package_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_package_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence }

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
            required :tiered_with_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_with_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_with_minimum_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_with_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence }

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
            required :unit_with_percent_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit_with_percent]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_with_percent_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit_with_percent,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence }

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
            required :package_with_allocation_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :package_with_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     package_with_allocation_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :package_with_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence }

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
            required :tiered_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence }

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
            required :unit_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_allocation_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_with_prorated_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_with_prorated_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk_with_proration]
            #   #
            #   def initialize(
            #     bulk_with_proration_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

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
            required :scalable_matrix_with_unit_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_unit_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :scalable_matrix_with_unit_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

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
            required :scalable_matrix_with_tiered_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_tiered_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :scalable_matrix_with_tiered_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :cumulative_grouped_bulk]
            #   #
            #   def initialize(
            #     cadence:,
            #     cumulative_grouped_bulk_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :cumulative_grouped_bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :max_group_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     max_group_tiered_package_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :max_group_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_with_metered_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_with_metered_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_with_metered_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            #   # @param item_id [String]
            #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :matrix_with_display_name]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     matrix_with_display_name_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :matrix_with_display_name,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_tiered_package_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end
        end
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

      class RemoveAdjustment < Orb::BaseModel
        # @!attribute adjustment_id
        #   The id of the adjustment to remove on the subscription.
        #
        #   @return [String]
        required :adjustment_id, String

        # @!parse
        #   # @param adjustment_id [String]
        #   #
        #   def initialize(adjustment_id:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class RemovePrice < Orb::BaseModel
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

        # @!parse
        #   # @param external_price_id [String, nil]
        #   # @param price_id [String, nil]
        #   #
        #   def initialize(external_price_id: nil, price_id: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class ReplaceAdjustment < Orb::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!parse
        #   # @param adjustment [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum]
        #   # @param replaces_adjustment_id [String]
        #   #
        #   def initialize(adjustment:, replaces_adjustment_id:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The definition of a new adjustment to create and add to the subscription.
        #
        # @example
        # ```ruby
        # case adjustment
        # in {
        #   adjustment_type: "percentage_discount",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   percentage_discount: Float,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount ...
        # in {
        #   adjustment_type: "usage_discount",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   usage_discount: Float,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount ...
        # in {
        #   adjustment_type: "amount_discount",
        #   amount_discount: String,
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount ...
        # in {
        #   adjustment_type: "minimum",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   item_id: String,
        #   minimum_amount: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum ...
        # in {
        #   adjustment_type: "maximum",
        #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
        #   maximum_amount: String,
        #   is_invoice_level: Orb::BooleanModel
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case adjustment
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum
        #   # ...
        # end
        # ```
        class Adjustment < Orb::Union
          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum }

          variant :maximum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum }

          class NewPercentageDiscount < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param percentage_discount [Float]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :percentage_discount]
            #   #
            #   def initialize(
            #     applies_to_price_ids:,
            #     percentage_discount:,
            #     is_invoice_level: nil,
            #     adjustment_type: :percentage_discount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewUsageDiscount < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param usage_discount [Float]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :usage_discount]
            #   #
            #   def initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewAmountDiscount < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param amount_discount [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :amount_discount]
            #   #
            #   def initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewMinimum < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param item_id [String]
            #   # @param minimum_amount [String]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :minimum]
            #   #
            #   def initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class NewMaximum < Orb::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #     will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!parse
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param maximum_amount [String]
            #   # @param is_invoice_level [Boolean]
            #   # @param adjustment_type [Symbol, :maximum]
            #   #
            #   def initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end

      class ReplacePrice < Orb::BaseModel
        # @!attribute replaces_price_id
        #   The id of the price on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_price_id, String

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        #     replacement price.
        #
        #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount>, nil]
        optional :discounts,
                 -> { Orb::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount] },
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
        #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #     the replacement price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #     the replacement price.
        #
        #   @return [String, nil]
        optional :minimum_amount, String, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        optional :price,
                 union: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price },
                 nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!parse
        #   # @param replaces_price_id [String]
        #   # @param allocation_price [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice, nil]
        #   # @param discounts [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount>, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param price [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        #   # @param price_id [String, nil]
        #   #
        #   def initialize(
        #     replaces_price_id:,
        #     allocation_price: nil,
        #     discounts: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     maximum_amount: nil,
        #     minimum_amount: nil,
        #     price: nil,
        #     price_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        class AllocationPrice < Orb::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #     this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #     over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::BooleanModel

          # @!parse
          #   # The definition of a new allocation price to create and add to the subscription.
          #   #
          #   # @param amount [String]
          #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::AllocationPrice::Cadence]
          #   # @param currency [String]
          #   # @param expires_at_end_of_cadence [Boolean]
          #   #
          #   def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # The cadence at which to allocate the amount to the customer.
          #
          # @example
          # ```ruby
          # case cadence
          # in :one_time
          #   # ...
          # in :monthly
          #   # ...
          # in :quarterly
          #   # ...
          # in :semi_annual
          #   # ...
          # in :annual
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Cadence < Orb::Enum
            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class Discount < Orb::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType }

          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String, nil]
          optional :amount_discount, String, nil?: true

          # @!attribute percentage_discount
          #   Only available if discount_type is `percentage`. This is a number between 0
          #     and 1.
          #
          #   @return [Float, nil]
          optional :percentage_discount, Float, nil?: true

          # @!attribute usage_discount
          #   Only available if discount_type is `usage`. Number of usage units that this
          #     discount is for
          #
          #   @return [Float, nil]
          optional :usage_discount, Float, nil?: true

          # @!parse
          #   # @param discount_type [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount::DiscountType]
          #   # @param amount_discount [String, nil]
          #   # @param percentage_discount [Float, nil]
          #   # @param usage_discount [Float, nil]
          #   #
          #   def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case discount_type
          # in :percentage
          #   # ...
          # in :usage
          #   # ...
          # in :amount
          #   # ...
          # end
          # ```
          class DiscountType < Orb::Enum
            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @abstract
        #
        # The definition of a new price to create and add to the subscription.
        #
        # @example
        # ```ruby
        # case price
        # in {
        #   model_type: "unit",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice ...
        # in {
        #   model_type: "package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice ...
        # in {
        #   model_type: "matrix",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence,
        #   item_id: String,
        #   matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice ...
        # in {
        #   model_type: "tiered",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice ...
        # in {
        #   model_type: "tiered_bps",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice ...
        # in {
        #   model_type: "bps",
        #   bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice ...
        # in {
        #   model_type: "bulk_bps",
        #   bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice ...
        # in {
        #   model_type: "bulk",
        #   bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice ...
        # in {
        #   model_type: "threshold_total_amount",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice ...
        # in {
        #   model_type: "tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice ...
        # in {
        #   model_type: "tiered_with_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice ...
        # in {
        #   model_type: "unit_with_percent",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice ...
        # in {
        #   model_type: "package_with_allocation",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice ...
        # in {
        #   model_type: "tiered_with_proration",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice ...
        # in {
        #   model_type: "unit_with_proration",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice ...
        # in {
        #   model_type: "grouped_allocation",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence,
        #   grouped_allocation_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice ...
        # in {
        #   model_type: "grouped_with_prorated_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence,
        #   grouped_with_prorated_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice ...
        # in {
        #   model_type: "bulk_with_proration",
        #   bulk_with_proration_config: ^(Orb::HashOf[Orb::Unknown]),
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence,
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice ...
        # in {
        #   model_type: "scalable_matrix_with_unit_pricing",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice ...
        # in {
        #   model_type: "scalable_matrix_with_tiered_pricing",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence,
        #   item_id: String,
        #   name: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice ...
        # in {
        #   model_type: "cumulative_grouped_bulk",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence,
        #   cumulative_grouped_bulk_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice ...
        # in {
        #   model_type: "max_group_tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence,
        #   item_id: String,
        #   max_group_tiered_package_config: ^(Orb::HashOf[Orb::Unknown])
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice ...
        # in {
        #   model_type: "grouped_with_metered_minimum",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence,
        #   grouped_with_metered_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice ...
        # in {
        #   model_type: "matrix_with_display_name",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence,
        #   item_id: String,
        #   matrix_with_display_name_config: ^(Orb::HashOf[Orb::Unknown])
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice ...
        # in {
        #   model_type: "grouped_tiered_package",
        #   cadence: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence,
        #   grouped_tiered_package_config: ^(Orb::HashOf[Orb::Unknown]),
        #   item_id: String
        # }
        #   # Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case price
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice
        #   # ...
        # in Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
        #   # ...
        # end
        # ```
        class Price < Orb::Union
          discriminator :model_type

          variant :unit,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice }

          variant :matrix,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice }

          variant :tiered,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice }

          variant :bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice }

          variant :bulk,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice }

          class NewSubscriptionUnitPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class UnitConfig < Orb::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!parse
              #   # @param unit_amount [String]
              #   #
              #   def initialize(unit_amount:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class PackageConfig < Orb::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #     usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!parse
              #   # @param package_amount [String]
              #   # @param package_size [Integer]
              #   #
              #   def initialize(package_amount:, package_size:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence]
            #   # @param item_id [String]
            #   # @param matrix_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :matrix]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     matrix_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :matrix,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class MatrixConfig < Orb::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!parse
              #   # @param default_unit_amount [String]
              #   # @param dimensions [Array<String, nil>]
              #   # @param matrix_values [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              #   #
              #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class MatrixValue < Orb::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #     instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!parse
                #   # @param dimension_values [Array<String, nil>]
                #   # @param unit_amount [String]
                #   #
                #   def initialize(dimension_values:, unit_amount:, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class TieredConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute first_unit
                #   Inclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Exclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!parse
                #   # @param first_unit [Float]
                #   # @param unit_amount [String]
                #   # @param last_unit [Float, nil]
                #   #
                #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_bps]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_bps_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class TieredBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #     tiers
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Inclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Exclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!parse
                #   # @param bps [Float]
                #   # @param minimum_amount [String]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bps]
            #   #
            #   def initialize(
            #     bps_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BpsConfig < Orb::BaseModel
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

              # @!parse
              #   # @param bps [Float]
              #   # @param per_unit_maximum [String, nil]
              #   #
              #   def initialize(bps:, per_unit_maximum: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_bps_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk_bps]
            #   #
            #   def initialize(
            #     bulk_bps_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #     tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
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

                # @!parse
                #   # @param bps [Float]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_config [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk]
            #   #
            #   def initialize(
            #     bulk_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkConfig < Orb::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
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

                # @!parse
                #   # @param unit_amount [String]
                #   # @param maximum_units [Float, nil]
                #   #
                #   def initialize(unit_amount:, maximum_units: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence }

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
            required :threshold_total_amount_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :threshold_total_amount]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     threshold_total_amount_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :threshold_total_amount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence }

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
            required :tiered_package_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_package_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence }

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
            required :tiered_with_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_with_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_with_minimum_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_with_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence }

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
            required :unit_with_percent_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit_with_percent]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_with_percent_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit_with_percent,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence }

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
            required :package_with_allocation_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :package_with_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     package_with_allocation_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :package_with_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence }

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
            required :tiered_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :tiered_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     tiered_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :tiered_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence }

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
            required :unit_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :unit_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     unit_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :unit_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_allocation_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_with_prorated_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_with_prorated_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence }

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :bulk_with_proration]
            #   #
            #   def initialize(
            #     bulk_with_proration_config:,
            #     cadence:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :bulk_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

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
            required :scalable_matrix_with_unit_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_unit_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :scalable_matrix_with_unit_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

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
            required :scalable_matrix_with_tiered_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_tiered_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :scalable_matrix_with_tiered_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :cumulative_grouped_bulk]
            #   #
            #   def initialize(
            #     cadence:,
            #     cumulative_grouped_bulk_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :cumulative_grouped_bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            #   # @param item_id [String]
            #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :max_group_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     max_group_tiered_package_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :max_group_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_with_metered_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_with_metered_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_with_metered_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            #   # @param item_id [String]
            #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :matrix_with_display_name]
            #   #
            #   def initialize(
            #     cadence:,
            #     item_id:,
            #     matrix_with_display_name_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :matrix_with_display_name,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::HashOf[Orb::Unknown]

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
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #     price is billed.
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
            #     applied.
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
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!attribute reference_id
            #   A transient ID that can be used to reference this price when adding adjustments
            #     in the same API call.
            #
            #   @return [String, nil]
            optional :reference_id, String, nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param currency [String, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param reference_id [String, nil]
            #   # @param model_type [Symbol, :grouped_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     grouped_tiered_package_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     currency: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     reference_id: nil,
            #     model_type: :grouped_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # @abstract
            #
            # The cadence to bill for this price on.
            #
            # @example
            # ```ruby
            # case cadence
            # in :annual
            #   # ...
            # in :semi_annual
            #   # ...
            # in :monthly
            #   # ...
            # in :quarterly
            #   # ...
            # in :one_time
            #   # ...
            # in ...
            #   #...
            # end
            # ```
            class Cadence < Orb::Enum
              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # @abstract
              #
              # The unit of billing period duration.
              #
              # @example
              # ```ruby
              # case duration_unit
              # in :day
              #   # ...
              # in :month
              #   # ...
              # end
              # ```
              class DurationUnit < Orb::Enum
                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end
          end
        end
      end
    end
  end
end
