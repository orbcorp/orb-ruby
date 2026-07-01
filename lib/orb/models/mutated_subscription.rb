# frozen_string_literal: true

module Orb
  module Models
    class MutatedSubscription < Orb::Internal::Type::BaseModel
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

      # @!attribute auto_issuance
      #   Determines whether invoices for this subscription will be automatically issued.
      #   This resolves the effective setting for the subscription: a subscription-level
      #   override if set, otherwise the customer-level setting, otherwise the
      #   account-level default.
      #
      #   @return [Boolean, nil]
      required :auto_issuance, Orb::Internal::Type::Boolean, nil?: true

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
      #   @return [Array<Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage>]
      required :discount_intervals,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::MutatedSubscription::DiscountInterval] }

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
      #   @return [Symbol, Orb::Models::MutatedSubscription::Status]
      required :status, enum: -> { Orb::MutatedSubscription::Status }

      # @!attribute trial_info
      #
      #   @return [Orb::Models::SubscriptionTrialInfo]
      required :trial_info, -> { Orb::SubscriptionTrialInfo }

      # @!attribute changed_resources
      #   The resources that were changed as part of this operation. Only present when
      #   fetched through the subscription changes API or if the
      #   `include_changed_resources` parameter was passed in the request.
      #
      #   @return [Orb::Models::ChangedSubscriptionResources, nil]
      optional :changed_resources, -> { Orb::ChangedSubscriptionResources }, nil?: true

      # @!method initialize(id:, active_plan_phase_order:, adjustment_intervals:, auto_collection:, auto_issuance:, billing_cycle_anchor_configuration:, billing_cycle_day:, created_at:, current_billing_period_end_date:, current_billing_period_start_date:, customer:, default_invoice_memo:, discount_intervals:, end_date:, fixed_fee_quantity_schedule:, invoicing_threshold:, maximum_intervals:, metadata:, minimum_intervals:, name:, net_terms:, pending_subscription_change:, plan:, price_intervals:, redeemed_coupon:, start_date:, status:, trial_info:, changed_resources: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MutatedSubscription} for more details.
      #
      #   @param id [String]
      #
      #   @param active_plan_phase_order [Integer, nil] The current plan phase that is active, only if the subscription's plan has phase
      #
      #   @param adjustment_intervals [Array<Orb::Models::AdjustmentInterval>] The adjustment intervals for this subscription sorted by the start_date of the a
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #
      #   @param auto_issuance [Boolean, nil] Determines whether invoices for this subscription will be automatically issued.
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
      #   @param discount_intervals [Array<Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage>] The discount intervals for this subscription sorted by the start_date. This fiel
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
      #   @param status [Symbol, Orb::Models::MutatedSubscription::Status]
      #
      #   @param trial_info [Orb::Models::SubscriptionTrialInfo]
      #
      #   @param changed_resources [Orb::Models::ChangedSubscriptionResources, nil] The resources that were changed as part of this operation. Only present when fet

      module DiscountInterval
        extend Orb::Internal::Type::Union

        discriminator :discount_type

        variant :amount, -> { Orb::AmountDiscountInterval }

        variant :percentage, -> { Orb::PercentageDiscountInterval }

        variant :usage, -> { Orb::UsageDiscountInterval }

        variant :tiered_percentage, -> { Orb::MutatedSubscription::DiscountInterval::TieredPercentage }

        class TieredPercentage < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, :tiered_percentage]
          required :discount_type, const: :tiered_percentage

          # @!attribute end_date
          #   The end date of the discount interval.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute filters
          #   The filters that determine which prices this discount interval applies to.
          #
          #   @return [Array<Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter>]
          required :filters,
                   -> { Orb::Internal::Type::ArrayOf[Orb::MutatedSubscription::DiscountInterval::TieredPercentage::Filter] }

          # @!attribute start_date
          #   The start date of the discount interval.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute tiers
          #   Only available if discount_type is `tiered_percentage`. The ordered, contiguous
          #   bands of cumulative eligible spend, each discounted at its own percentage.
          #
          #   @return [Array<Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::MutatedSubscription::DiscountInterval::TieredPercentage::Tier] }

          # @!method initialize(applies_to_price_interval_ids:, end_date:, filters:, start_date:, tiers:, discount_type: :tiered_percentage)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage} for more
          #   details.
          #
          #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
          #
          #   @param end_date [Time, nil] The end date of the discount interval.
          #
          #   @param filters [Array<Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter>] The filters that determine which prices this discount interval applies to.
          #
          #   @param start_date [Time] The start date of the discount interval.
          #
          #   @param tiers [Array<Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Tier>] Only available if discount_type is `tiered_percentage`. The ordered, contiguous
          #
          #   @param discount_type [Symbol, :tiered_percentage]

          class Filter < Orb::Internal::Type::BaseModel
            # @!attribute field
            #   The property of the price to filter on.
            #
            #   @return [Symbol, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Field]
            required :field, enum: -> { Orb::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Operator]
            required :operator,
                     enum: -> { Orb::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter#field
            module Field
              extend Orb::Internal::Type::Enum

              PRICE_ID = :price_id
              ITEM_ID = :item_id
              PRICE_TYPE = :price_type
              CURRENCY = :currency
              PRICING_UNIT_ID = :pricing_unit_id

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Should prices that match the filter be included or excluded.
            #
            # @see Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Filter#operator
            module Operator
              extend Orb::Internal::Type::Enum

              INCLUDES = :includes
              EXCLUDES = :excludes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            # @!attribute lower_bound
            #   Exclusive lower bound of cumulative spend for this tier.
            #
            #   @return [Float]
            required :lower_bound, Float

            # @!attribute percentage
            #   The percentage (between 0 and 1) discounted from spend that falls within this
            #   tier.
            #
            #   @return [Float]
            required :percentage, Float

            # @!attribute upper_bound
            #   Inclusive upper bound of cumulative spend for this tier; null for the final
            #   open-ended tier.
            #
            #   @return [Float, nil]
            optional :upper_bound, Float, nil?: true

            # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage::Tier} for
            #   more details.
            #
            #   One band of a tiered percentage discount. Bounds are denominated in the
            #   discount's currency. `lower_bound` is the exclusive start of the band and
            #   `upper_bound` is the inclusive end; `upper_bound` is null only for the
            #   open-ended final tier.
            #
            #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
            #
            #   @param percentage [Float] The percentage (between 0 and 1) discounted from spend that falls within this ti
            #
            #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend for this tier; null for the final open
          end
        end

        # @!method self.variants
        #   @return [Array(Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval, Orb::Models::MutatedSubscription::DiscountInterval::TieredPercentage)]
      end

      # @see Orb::Models::MutatedSubscription#status
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
