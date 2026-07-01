# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#create
    class SubscriptionCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice>, nil]
      optional :add_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddPrice] },
               nil?: true

      # @!attribute align_billing_with_subscription_start_date
      #
      #   @return [Boolean, nil]
      optional :align_billing_with_subscription_start_date, Orb::Internal::Type::Boolean

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. If not specified, this
      #   defaults to the behavior configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute auto_issuance
      #   Used to determine if invoices for this subscription will be automatically
      #   issued. If true, invoices will be automatically issued. If false, invoices will
      #   require manual approval. If `null` is specified, this defaults to the behavior
      #   configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_issuance, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute aws_region
      #   @deprecated
      #
      #   @return [String, nil]
      optional :aws_region, String, nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::BillingCycleAnchorConfiguration, nil]
      optional :billing_cycle_anchor_configuration, -> { Orb::BillingCycleAnchorConfiguration }, nil?: true

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

      # @!attribute currency
      #   The currency to use for the subscription. If not specified, the invoicing
      #   currency for the plan will be used.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscription's invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      optional :default_invoice_memo, String, nil?: true

      # @!attribute end_date
      #
      #   @return [Time, nil]
      optional :end_date, Time, nil?: true

      # @!attribute external_customer_id
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute external_marketplace
      #   @deprecated
      #
      #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      optional :external_marketplace,
               enum: -> { Orb::SubscriptionCreateParams::ExternalMarketplace },
               nil?: true

      # @!attribute external_marketplace_reporting_id
      #   @deprecated
      #
      #   @return [String, nil]
      optional :external_marketplace_reporting_id, String, nil?: true

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

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute name
      #   The name to use for the subscription. If not specified, the plan name will be
      #   used.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

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
      #   Specifies which version of the plan to subscribe to. If null, the default
      #   version will be used.
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
      #   @return [Array<Orb::Models::SubscriptionCreateParams::RemoveAdjustment>, nil]
      optional :remove_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::RemoveAdjustment] },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #   (Only available for accounts that have migrated off of legacy subscription
      #   overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplaceAdjustment] },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #   available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice>, nil]
      optional :replace_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplacePrice] },
               nil?: true

      # @!attribute start_date
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

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

      # @!method initialize(add_adjustments: nil, add_prices: nil, align_billing_with_subscription_start_date: nil, auto_collection: nil, auto_issuance: nil, aws_region: nil, billing_cycle_anchor_configuration: nil, coupon_redemption_code: nil, credits_overage_rate: nil, currency: nil, customer_id: nil, default_invoice_memo: nil, end_date: nil, external_customer_id: nil, external_marketplace: nil, external_marketplace_reporting_id: nil, external_plan_id: nil, filter: nil, initial_phase_order: nil, invoicing_threshold: nil, metadata: nil, name: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, plan_version_number: nil, price_overrides: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, start_date: nil, trial_duration_days: nil, usage_customer_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionCreateParams} for more details.
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment>, nil] Additional adjustments to be added to the subscription. (Only available for acco
      #
      #   @param add_prices [Array<Orb::Models::SubscriptionCreateParams::AddPrice>, nil] Additional prices to be added to the subscription. (Only available for accounts
      #
      #   @param align_billing_with_subscription_start_date [Boolean]
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #
      #   @param auto_issuance [Boolean, nil] Used to determine if invoices for this subscription will be automatically issued
      #
      #   @param aws_region [String, nil]
      #
      #   @param billing_cycle_anchor_configuration [Orb::Models::BillingCycleAnchorConfiguration, nil]
      #
      #   @param coupon_redemption_code [String, nil] Redemption code to be used for this subscription. If the coupon cannot be found
      #
      #   @param credits_overage_rate [Float, nil]
      #
      #   @param currency [String, nil] The currency to use for the subscription. If not specified, the invoicing curren
      #
      #   @param customer_id [String, nil]
      #
      #   @param default_invoice_memo [String, nil] Determines the default memo on this subscription's invoices. Note that if this i
      #
      #   @param end_date [Time, nil]
      #
      #   @param external_customer_id [String, nil]
      #
      #   @param external_marketplace [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      #
      #   @param external_marketplace_reporting_id [String, nil]
      #
      #   @param external_plan_id [String, nil] The external_plan_id of the plan that the given subscription should be switched
      #
      #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
      #
      #   @param initial_phase_order [Integer, nil] The phase of the plan to start with
      #
      #   @param invoicing_threshold [String, nil] When this subscription's accrued usage reaches this threshold, an invoice will b
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param name [String, nil] The name to use for the subscription. If not specified, the plan name will be us
      #
      #   @param net_terms [Integer, nil] The net terms determines the difference between the invoice date and the issue d
      #
      #   @param per_credit_overage_amount [Float, nil]
      #
      #   @param plan_id [String, nil] The plan that the given subscription should be switched to. Note that either thi
      #
      #   @param plan_version_number [Integer, nil] Specifies which version of the plan to subscribe to. If null, the default versio
      #
      #   @param price_overrides [Array<Object>, nil] Optionally provide a list of overrides for prices on the plan
      #
      #   @param remove_adjustments [Array<Orb::Models::SubscriptionCreateParams::RemoveAdjustment>, nil] Plan adjustments to be removed from the subscription. (Only available for accoun
      #
      #   @param remove_prices [Array<Orb::Models::SubscriptionCreateParams::RemovePrice>, nil] Plan prices to be removed from the subscription. (Only available for accounts th
      #
      #   @param replace_adjustments [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment>, nil] Plan adjustments to be replaced with additional adjustments on the subscription.
      #
      #   @param replace_prices [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice>, nil] Plan prices to be replaced with additional prices on the subscription. (Only ava
      #
      #   @param start_date [Time, nil]
      #
      #   @param trial_duration_days [Integer, nil] The duration of the trial period in days. If not provided, this defaults to the
      #
      #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount]
        required :adjustment, union: -> { Orb::SubscriptionCreateParams::AddAdjustment::Adjustment }

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
        #   {Orb::Models::SubscriptionCreateParams::AddAdjustment} for more details.
        #
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param end_date [Time, nil] The end date of the adjustment interval. This is the date that the adjustment wi
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this adjustment to.
        #
        #   @param start_date [Time, nil] The start date of the adjustment interval. This is the date that the adjustment

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionCreateParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount, -> { Orb::NewPercentageDiscount }

          variant :usage_discount, -> { Orb::NewUsageDiscount }

          variant :amount_discount, -> { Orb::NewAmountDiscount }

          variant :minimum, -> { Orb::NewMinimum }

          variant :maximum, -> { Orb::NewMaximum }

          variant :tiered_percentage_discount,
                  -> { Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount }

          class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :tiered_percentage_discount]
            required :adjustment_type, const: :tiered_percentage_discount

            # @!attribute tiers
            #
            #   @return [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Tier>]
            required :tiers,
                     -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Tier] }

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::PriceType
                     },
                     nil?: true

            # @!method initialize(tiers:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :tiered_percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount}
            #   for more details.
            #
            #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Tier>]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :tiered_percentage_discount]

            class Tier < Orb::Internal::Type::BaseModel
              # @!attribute lower_bound
              #   Exclusive lower bound of cumulative spend for this tier.
              #
              #   @return [Float]
              required :lower_bound, Float

              # @!attribute percentage
              #   The percentage (0-1) discounted from spend in this tier.
              #
              #   @return [Float]
              required :percentage, Float

              # @!attribute upper_bound
              #   Inclusive upper bound of cumulative spend; null for the final open-ended tier.
              #
              #   @return [Float, nil]
              optional :upper_bound, Float, nil?: true

              # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
              #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
              #
              #   @param percentage [Float] The percentage (0-1) discounted from spend in this tier.
              #
              #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend; null for the final open-ended tier.
            end

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field]
              required :field,
                       enum: -> { Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator]
              required :operator,
                       enum: -> { Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter#field
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
              # @see Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::TieredPercentageDiscount)]
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

        # @!attribute metric_parameter_overrides
        #   Override values for parameterized billable metric variables. Keys are parameter
        #   names, values are the override values.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metric_parameter_overrides,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown],
                 nil?: true

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
        #   New subscription price request body params.
        #
        #   @return [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent, Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput, nil]
        optional :price, union: -> { Orb::SubscriptionCreateParams::AddPrice::Price }, nil?: true

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

        # @!method initialize(allocation_price: nil, discounts: nil, end_date: nil, external_price_id: nil, maximum_amount: nil, metric_parameter_overrides: nil, minimum_amount: nil, plan_phase_order: nil, price: nil, price_id: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionCreateParams::AddPrice} for more details.
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
        #   @param metric_parameter_overrides [Hash{Symbol=>Object}, nil] Override values for parameterized billable metric variables. Keys are parameter
        #
        #   @param minimum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this price to.
        #
        #   @param price [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent, Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput, nil] New subscription price request body params.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param start_date [Time, nil] The start date of the price interval. This is the date that the price will start

        # New subscription price request body params.
        #
        # @see Orb::Models::SubscriptionCreateParams::AddPrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewSubscriptionUnitPrice }

          variant :tiered, -> { Orb::NewSubscriptionTieredPrice }

          variant :bulk, -> { Orb::NewSubscriptionBulkPrice }

          variant :bulk_with_filters, -> { Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters }

          variant :package, -> { Orb::NewSubscriptionPackagePrice }

          variant :matrix, -> { Orb::NewSubscriptionMatrixPrice }

          variant :threshold_total_amount, -> { Orb::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewSubscriptionTieredWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewSubscriptionGroupedTieredPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewSubscriptionTieredPackageWithMinimumPrice }

          variant :package_with_allocation, -> { Orb::NewSubscriptionPackageWithAllocationPrice }

          variant :unit_with_percent, -> { Orb::NewSubscriptionUnitWithPercentPrice }

          variant :matrix_with_allocation, -> { Orb::NewSubscriptionMatrixWithAllocationPrice }

          variant :matrix_with_threshold_discounts,
                  -> { Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts }

          variant :tiered_with_proration, -> { Orb::SubscriptionCreateParams::AddPrice::Price::TieredWithProration }

          variant :unit_with_proration, -> { Orb::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewSubscriptionGroupedAllocationPrice }

          variant :bulk_with_proration, -> { Orb::NewSubscriptionBulkWithProrationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :grouped_with_min_max_thresholds,
                  -> { Orb::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds }

          variant :matrix_with_display_name, -> { Orb::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewSubscriptionGroupedTieredPackagePrice }

          variant :max_group_tiered_package, -> { Orb::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing, -> { Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :cumulative_grouped_allocation,
                  -> { Orb::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation }

          variant :daily_credit_allowance,
                  -> { Orb::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance }

          variant :metered_allowance, -> { Orb::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance }

          variant :minimum_composite, -> { Orb::NewSubscriptionMinimumCompositePrice }

          variant :percent, -> { Orb::SubscriptionCreateParams::AddPrice::Price::Percent }

          variant :event_output, -> { Orb::SubscriptionCreateParams::AddPrice::Price::EventOutput }

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_filters_config
            #   Configuration for bulk_with_filters pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig]
            required :bulk_with_filters_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :bulk_with_filters]
            required :model_type, const: :bulk_with_filters

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(bulk_with_filters_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :bulk_with_filters)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters} for
            #   more details.
            #
            #   @param bulk_with_filters_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_with_filters] The pricing model type

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters#bulk_with_filters_config
            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              # @!attribute filters
              #   Property filters to apply (all must match)
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter] }

              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier] }

              # @!method initialize(filters:, tiers:)
              #   Configuration for bulk_with_filters pricing
              #
              #   @param filters [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
              #
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute property_key
                #   Event property key to filter on
                #
                #   @return [String]
                required :property_key, String

                # @!attribute property_value
                #   Event property value to match
                #
                #   @return [String]
                required :property_value, String

                # @!method initialize(property_key:, property_value:)
                #   Configuration for a single property filter
                #
                #   @param property_key [String] Event property key to filter on
                #
                #   @param property_value [String] Event property value to match
              end

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute tier_lower_bound
                #   The lower bound for this tier
                #
                #   @return [String, nil]
                optional :tier_lower_bound, String, nil?: true

                # @!method initialize(unit_amount:, tier_lower_bound: nil)
                #   Configuration for a single bulk pricing tier
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param tier_lower_bound [String, nil] The lower bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters#cadence
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
          end

          class MatrixWithThresholdDiscounts < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_threshold_discounts_config
            #   Configuration for matrix_with_threshold_discounts pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig]
            required :matrix_with_threshold_discounts_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig }

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :matrix_with_threshold_discounts]
            required :model_type, const: :matrix_with_threshold_discounts

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, matrix_with_threshold_discounts_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :matrix_with_threshold_discounts)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_threshold_discounts_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig] Configuration for matrix_with_threshold_discounts pricing
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix_with_threshold_discounts] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts#matrix_with_threshold_discounts_config
            class MatrixWithThresholdDiscountsConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Unit price used for usage that does not match any defined matrix cell.
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute first_dimension
              #   First matrix dimension key.
              #
              #   @return [String]
              required :first_dimension, String

              # @!attribute matrix_values
              #   Per-cell unit prices.
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue
                         ]
                       end

              # @!attribute second_dimension
              #   Optional second matrix dimension key.
              #
              #   @return [String, nil]
              optional :second_dimension, String, nil?: true

              # @!attribute threshold_discount_groups
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>, nil]
              optional :threshold_discount_groups,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup
                         ]
                       end

              # @!method initialize(default_unit_amount:, first_dimension:, matrix_values:, second_dimension: nil, threshold_discount_groups: nil)
              #   Configuration for matrix_with_threshold_discounts pricing
              #
              #   @param default_unit_amount [String] Unit price used for usage that does not match any defined matrix cell.
              #
              #   @param first_dimension [String] First matrix dimension key.
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>] Per-cell unit prices.
              #
              #   @param second_dimension [String, nil] Optional second matrix dimension key.
              #
              #   @param threshold_discount_groups [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>]

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute first_dimension_value
                #
                #   @return [String]
                required :first_dimension_value, String

                # @!attribute unit_amount
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute second_dimension_value
                #
                #   @return [String, nil]
                optional :second_dimension_value, String, nil?: true

                # @!method initialize(first_dimension_value:, unit_amount:, second_dimension_value: nil)
                #   @param first_dimension_value [String]
                #   @param unit_amount [String]
                #   @param second_dimension_value [String, nil]
              end

              class ThresholdDiscountGroup < Orb::Internal::Type::BaseModel
                # @!attribute above_threshold_discount_percentage
                #   Discount rate applied to spend above the threshold.
                #
                #   @return [String]
                required :above_threshold_discount_percentage, String

                # @!attribute below_threshold_discount_percentage
                #   Discount rate applied to spend at or below the threshold. Set to 0 for no
                #   baseline discount.
                #
                #   @return [String]
                required :below_threshold_discount_percentage, String

                # @!attribute cell_coordinates
                #   Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                #   coordinate is `first,second` when the matrix has two dimensions, or just `first`
                #   for a single-dimension matrix. Example: `blue,circle;green,triangle`.
                #
                #   @return [String]
                required :cell_coordinates, String

                # @!attribute threshold_amount
                #
                #   @return [String]
                required :threshold_amount, String

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String, nil?: true

                # @!method initialize(above_threshold_discount_percentage:, below_threshold_discount_percentage:, cell_coordinates:, threshold_amount:, description: nil)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup}
                #   for more details.
                #
                #   @param above_threshold_discount_percentage [String] Discount rate applied to spend above the threshold.
                #
                #   @param below_threshold_discount_percentage [String] Discount rate applied to spend at or below the threshold. Set to 0 for no baseli
                #
                #   @param cell_coordinates [String] Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                #
                #   @param threshold_amount [String]
                #
                #   @param description [String, nil]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #   Configuration for tiered_with_proration pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig]
            required :tiered_with_proration_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig }

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig] Configuration for tiered_with_proration pricing
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_proration] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration#tiered_with_proration_config
            class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier with
              #   proration
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier] }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig}
              #   for more details.
              #
              #   Configuration for tiered_with_proration pricing
              #
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier with pr

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute tier_lower_bound
                #   Inclusive tier starting value
                #
                #   @return [String]
                required :tier_lower_bound, String

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(tier_lower_bound:, unit_amount:)
                #   Configuration for a single tiered with proration tier
                #
                #   @param tier_lower_bound [String] Inclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
              end
            end
          end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence }

            # @!attribute grouped_with_min_max_thresholds_config
            #   Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
            required :grouped_with_min_max_thresholds_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :grouped_with_min_max_thresholds]
            required :model_type, const: :grouped_with_min_max_thresholds

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_min_max_thresholds)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_min_max_thresholds_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              # @!attribute grouping_key
              #   The event property used to group before applying thresholds
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute maximum_charge
              #   The maximum amount to charge each group
              #
              #   @return [String]
              required :maximum_charge, String

              # @!attribute minimum_charge
              #   The minimum amount to charge each group, regardless of usage
              #
              #   @return [String]
              required :minimum_charge, String

              # @!attribute per_unit_rate
              #   The base price charged per group
              #
              #   @return [String]
              required :per_unit_rate, String

              # @!method initialize(grouping_key:, maximum_charge:, minimum_charge:, per_unit_rate:)
              #   Configuration for grouped_with_min_max_thresholds pricing
              #
              #   @param grouping_key [String] The event property used to group before applying thresholds
              #
              #   @param maximum_charge [String] The maximum amount to charge each group
              #
              #   @param minimum_charge [String] The minimum amount to charge each group, regardless of usage
              #
              #   @param per_unit_rate [String] The base price charged per group
            end
          end

          class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence }

            # @!attribute cumulative_grouped_allocation_config
            #   Configuration for cumulative_grouped_allocation pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig]
            required :cumulative_grouped_allocation_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :cumulative_grouped_allocation]
            required :model_type, const: :cumulative_grouped_allocation

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, cumulative_grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :cumulative_grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_allocation_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig] Configuration for cumulative_grouped_allocation pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :cumulative_grouped_allocation] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation#cumulative_grouped_allocation_config
            class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
              # @!attribute cumulative_allocation
              #   The overall allocation across all groups
              #
              #   @return [String]
              required :cumulative_allocation, String

              # @!attribute group_allocation
              #   The allocation per individual group
              #
              #   @return [String]
              required :group_allocation, String

              # @!attribute grouping_key
              #   The event property used to group usage before applying allocations
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute unit_amount
              #   The amount to charge for each unit outside of the allocation
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(cumulative_allocation:, group_allocation:, grouping_key:, unit_amount:)
              #   Configuration for cumulative_grouped_allocation pricing
              #
              #   @param cumulative_allocation [String] The overall allocation across all groups
              #
              #   @param group_allocation [String] The allocation per individual group
              #
              #   @param grouping_key [String] The event property used to group usage before applying allocations
              #
              #   @param unit_amount [String] The amount to charge for each unit outside of the allocation
            end
          end

          class DailyCreditAllowance < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::Cadence }

            # @!attribute daily_credit_allowance_config
            #   Configuration for daily_credit_allowance pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig]
            required :daily_credit_allowance_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :daily_credit_allowance]
            required :model_type, const: :daily_credit_allowance

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, daily_credit_allowance_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :daily_credit_allowance)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::Cadence] The cadence to bill for this price on.
            #
            #   @param daily_credit_allowance_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig] Configuration for daily_credit_allowance pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :daily_credit_allowance] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance#daily_credit_allowance_config
            class DailyCreditAllowanceConfig < Orb::Internal::Type::BaseModel
              # @!attribute daily_allowance
              #   Credits granted per day. Lose-it-or-use-it; does not roll over.
              #
              #   @return [String]
              required :daily_allowance, String

              # @!attribute default_unit_amount
              #   Default per-unit credit rate for any usage not bucketed into a specified
              #   matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute event_day_property
              #   Event property whose value identifies the day bucket the event belongs to (e.g.
              #   'event_day' set to an ISO date string in the customer's timezone). The allowance
              #   resets per distinct value of this property.
              #
              #   @return [String]
              required :event_day_property, String

              # @!attribute matrix_values
              #   Per-dimension credit rates
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue
                         ]
                       end

              # @!method initialize(daily_allowance:, default_unit_amount:, dimensions:, event_day_property:, matrix_values:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig}
              #   for more details.
              #
              #   Configuration for daily_credit_allowance pricing
              #
              #   @param daily_allowance [String] Credits granted per day. Lose-it-or-use-it; does not roll over.
              #
              #   @param default_unit_amount [String] Default per-unit credit rate for any usage not bucketed into a specified
              #   matrix\_
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param event_day_property [String] Event property whose value identifies the day bucket the event belongs to (e.g.
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>] Per-dimension credit rates

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this value by. For example, ["model"]
                #   could be used to apply a different credit rate to each AI model.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Credits charged per unit of usage matching the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue}
                #   for more details.
                #
                #   Per-dimension credit price for the daily credit allowance model.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this value by. For example, ["model"]
                #
                #   @param unit_amount [String] Credits charged per unit of usage matching the specified dimension_values
              end
            end
          end

          class MeteredAllowance < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute metered_allowance_config
            #   Configuration for metered_allowance pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::MeteredAllowanceConfig]
            required :metered_allowance_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::MeteredAllowanceConfig }

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :metered_allowance]
            required :model_type, const: :metered_allowance

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, metered_allowance_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :metered_allowance)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param metered_allowance_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::MeteredAllowanceConfig] Configuration for metered_allowance pricing
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :metered_allowance] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance#metered_allowance_config
            class MeteredAllowanceConfig < Orb::Internal::Type::BaseModel
              # @!attribute allowance_grouping_value
              #   The grouping_key value whose summed quantity represents the allowance for this
              #   period (e.g. 'storage_snapshot' emitting 3 × avg storage). Capped at consumption
              #   — credit can never exceed actual usage.
              #
              #   @return [String]
              required :allowance_grouping_value, String

              # @!attribute consumption_grouping_value
              #   The grouping_key value whose summed quantity represents consumption (e.g.
              #   'download'). Charged at unit_amount.
              #
              #   @return [String]
              required :consumption_grouping_value, String

              # @!attribute grouping_key
              #   Event property used to partition the metric into consumption and allowance
              #   quantities (e.g. 'event_name'). The metric is queried with this key and the two
              #   values below select which partition is which.
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute unit_amount
              #   Per-unit price applied to gross consumption and to the allowance credit.
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute allowance_display_name
              #   Sub-line label for the credit row (e.g. 'Up to 3x free egress').
              #
              #   @return [String, nil]
              optional :allowance_display_name, String

              # @!attribute consumption_display_name
              #   Sub-line label for the gross consumption row (e.g. 'bytes gotten').
              #
              #   @return [String, nil]
              optional :consumption_display_name, String

              # @!method initialize(allowance_grouping_value:, consumption_grouping_value:, grouping_key:, unit_amount:, allowance_display_name: nil, consumption_display_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance::MeteredAllowanceConfig}
              #   for more details.
              #
              #   Configuration for metered_allowance pricing
              #
              #   @param allowance_grouping_value [String] The grouping_key value whose summed quantity represents the allowance for this p
              #
              #   @param consumption_grouping_value [String] The grouping_key value whose summed quantity represents consumption (e.g. 'downl
              #
              #   @param grouping_key [String] Event property used to partition the metric into consumption and allowance quant
              #
              #   @param unit_amount [String] Per-unit price applied to gross consumption and to the allowance credit.
              #
              #   @param allowance_display_name [String] Sub-line label for the credit row (e.g. 'Up to 3x free egress').
              #
              #   @param consumption_display_name [String] Sub-line label for the gross consumption row (e.g. 'bytes gotten').
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::Percent::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :percent]
            required :model_type, const: :percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute percent_config
            #   Configuration for percent pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent::PercentConfig]
            required :percent_config, -> { Orb::SubscriptionCreateParams::AddPrice::Price::Percent::PercentConfig }

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::Percent::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, name:, percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param percent_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent::PercentConfig] Configuration for percent pricing
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :percent] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent#percent_config
            class PercentConfig < Orb::Internal::Type::BaseModel
              # @!attribute percent
              #   Fraction of the component subtotals to charge (0 < percent <= 1).
              #
              #   @return [Float]
              required :percent, Float

              # @!attribute maximum_amount
              #   Maximum amount to charge. If unset, the fee has no upper bound.
              #
              #   @return [String, nil]
              optional :maximum_amount, String, nil?: true

              # @!attribute minimum_amount
              #   Minimum amount to charge. If unset, the fee is bounded below by 0.
              #
              #   @return [String, nil]
              optional :minimum_amount, String, nil?: true

              # @!attribute prorated
              #   If true, the minimum_amount is prorated based on the service period. The
              #   maximum_amount is an absolute cap (never prorated), and the percent applied to
              #   upstream subtotals is never prorated either.
              #
              #   @return [Boolean, nil]
              optional :prorated, Orb::Internal::Type::Boolean

              # @!method initialize(percent:, maximum_amount: nil, minimum_amount: nil, prorated: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent::PercentConfig}
              #   for more details.
              #
              #   Configuration for percent pricing
              #
              #   @param percent [Float] Fraction of the component subtotals to charge (0 < percent <= 1).
              #
              #   @param maximum_amount [String, nil] Maximum amount to charge. If unset, the fee has no upper bound.
              #
              #   @param minimum_amount [String, nil] Minimum amount to charge. If unset, the fee is bounded below by 0.
              #
              #   @param prorated [Boolean] If true, the minimum_amount is prorated based on the service period. The maximum
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::AddPrice::Price::EventOutput::Cadence }

            # @!attribute event_output_config
            #   Configuration for event_output pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput::EventOutputConfig]
            required :event_output_config,
                     -> { Orb::SubscriptionCreateParams::AddPrice::Price::EventOutput::EventOutputConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :event_output]
            required :model_type, const: :event_output

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::AddPrice::Price::EventOutput::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, event_output_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :event_output)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput::Cadence] The cadence to bill for this price on.
            #
            #   @param event_output_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput::EventOutputConfig] Configuration for event_output pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :event_output] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput#event_output_config
            class EventOutputConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_rating_key
              #   The key in the event data to extract the unit rate from.
              #
              #   @return [String]
              required :unit_rating_key, String

              # @!attribute default_unit_rate
              #   If provided, this amount will be used as the unit rate when an event does not
              #   have a value for the `unit_rating_key`. If not provided, events missing a unit
              #   rate will be ignored.
              #
              #   @return [String, nil]
              optional :default_unit_rate, String, nil?: true

              # @!attribute grouping_key
              #   An optional key in the event data to group by (e.g., event ID). All events will
              #   also be grouped by their unit rate.
              #
              #   @return [String, nil]
              optional :grouping_key, String, nil?: true

              # @!method initialize(unit_rating_key:, default_unit_rate: nil, grouping_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput::EventOutputConfig}
              #   for more details.
              #
              #   Configuration for event_output pricing
              #
              #   @param unit_rating_key [String] The key in the event data to extract the unit rate from.
              #
              #   @param default_unit_rate [String, nil] If provided, this amount will be used as the unit rate when an event does not ha
              #
              #   @param grouping_key [String, nil] An optional key in the event data to group by (e.g., event ID). All events will
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::AddPrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Percent, Orb::Models::SubscriptionCreateParams::AddPrice::Price::EventOutput)]
        end
      end

      # @deprecated
      module ExternalMarketplace
        extend Orb::Internal::Type::Enum

        GOOGLE = :google
        AWS = :aws
        AZURE = :azure

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
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount]
        required :adjustment, union: -> { Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!method initialize(adjustment:, replaces_adjustment_id:)
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param replaces_adjustment_id [String] The id of the adjustment on the plan to replace in the subscription.

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount, -> { Orb::NewPercentageDiscount }

          variant :usage_discount, -> { Orb::NewUsageDiscount }

          variant :amount_discount, -> { Orb::NewAmountDiscount }

          variant :minimum, -> { Orb::NewMinimum }

          variant :maximum, -> { Orb::NewMaximum }

          variant :tiered_percentage_discount,
                  -> { Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount }

          class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :tiered_percentage_discount]
            required :adjustment_type, const: :tiered_percentage_discount

            # @!attribute tiers
            #
            #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Tier>]
            required :tiers,
                     -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Tier] }

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::PriceType
                     },
                     nil?: true

            # @!method initialize(tiers:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :tiered_percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount}
            #   for more details.
            #
            #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Tier>]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :tiered_percentage_discount]

            class Tier < Orb::Internal::Type::BaseModel
              # @!attribute lower_bound
              #   Exclusive lower bound of cumulative spend for this tier.
              #
              #   @return [Float]
              required :lower_bound, Float

              # @!attribute percentage
              #   The percentage (0-1) discounted from spend in this tier.
              #
              #   @return [Float]
              required :percentage, Float

              # @!attribute upper_bound
              #   Inclusive upper bound of cumulative spend; null for the final open-ended tier.
              #
              #   @return [Float, nil]
              optional :upper_bound, Float, nil?: true

              # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
              #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
              #
              #   @param percentage [Float] The percentage (0-1) discounted from spend in this tier.
              #
              #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend; null for the final open-ended tier.
            end

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field]
              required :field,
                       enum: -> { Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator]
              required :operator,
                       enum: -> { Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter#field
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
              # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::TieredPercentageDiscount)]
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

        # @!attribute metric_parameter_overrides
        #   Override values for parameterized billable metric variables. Keys are parameter
        #   names, values are the override values.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metric_parameter_overrides,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown],
                 nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   the replacement price.
        #
        #   @return [String, nil]
        optional :minimum_amount, String, nil?: true

        # @!attribute price
        #   New subscription price request body params.
        #
        #   @return [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput, nil]
        optional :price, union: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(replaces_price_id:, allocation_price: nil, discounts: nil, external_price_id: nil, fixed_price_quantity: nil, maximum_amount: nil, metric_parameter_overrides: nil, minimum_amount: nil, price: nil, price_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionCreateParams::ReplacePrice} for more details.
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
        #   @param metric_parameter_overrides [Hash{Symbol=>Object}, nil] Override values for parameterized billable metric variables. Keys are parameter
        #
        #   @param minimum_amount [String, nil] [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #
        #   @param price [Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput, nil] New subscription price request body params.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.

        # New subscription price request body params.
        #
        # @see Orb::Models::SubscriptionCreateParams::ReplacePrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewSubscriptionUnitPrice }

          variant :tiered, -> { Orb::NewSubscriptionTieredPrice }

          variant :bulk, -> { Orb::NewSubscriptionBulkPrice }

          variant :bulk_with_filters, -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters }

          variant :package, -> { Orb::NewSubscriptionPackagePrice }

          variant :matrix, -> { Orb::NewSubscriptionMatrixPrice }

          variant :threshold_total_amount, -> { Orb::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewSubscriptionTieredWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewSubscriptionGroupedTieredPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewSubscriptionTieredPackageWithMinimumPrice }

          variant :package_with_allocation, -> { Orb::NewSubscriptionPackageWithAllocationPrice }

          variant :unit_with_percent, -> { Orb::NewSubscriptionUnitWithPercentPrice }

          variant :matrix_with_allocation, -> { Orb::NewSubscriptionMatrixWithAllocationPrice }

          variant :matrix_with_threshold_discounts,
                  -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts }

          variant :tiered_with_proration,
                  -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration }

          variant :unit_with_proration, -> { Orb::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewSubscriptionGroupedAllocationPrice }

          variant :bulk_with_proration, -> { Orb::NewSubscriptionBulkWithProrationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :grouped_with_min_max_thresholds,
                  -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds }

          variant :matrix_with_display_name, -> { Orb::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewSubscriptionGroupedTieredPackagePrice }

          variant :max_group_tiered_package, -> { Orb::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing, -> { Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :cumulative_grouped_allocation,
                  -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation }

          variant :daily_credit_allowance,
                  -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance }

          variant :metered_allowance, -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance }

          variant :minimum_composite, -> { Orb::NewSubscriptionMinimumCompositePrice }

          variant :percent, -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::Percent }

          variant :event_output, -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::EventOutput }

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_filters_config
            #   Configuration for bulk_with_filters pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig]
            required :bulk_with_filters_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :bulk_with_filters]
            required :model_type, const: :bulk_with_filters

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(bulk_with_filters_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :bulk_with_filters)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters}
            #   for more details.
            #
            #   @param bulk_with_filters_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :bulk_with_filters] The pricing model type

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters#bulk_with_filters_config
            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              # @!attribute filters
              #   Property filters to apply (all must match)
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter] }

              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier] }

              # @!method initialize(filters:, tiers:)
              #   Configuration for bulk_with_filters pricing
              #
              #   @param filters [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
              #
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute property_key
                #   Event property key to filter on
                #
                #   @return [String]
                required :property_key, String

                # @!attribute property_value
                #   Event property value to match
                #
                #   @return [String]
                required :property_value, String

                # @!method initialize(property_key:, property_value:)
                #   Configuration for a single property filter
                #
                #   @param property_key [String] Event property key to filter on
                #
                #   @param property_value [String] Event property value to match
              end

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute tier_lower_bound
                #   The lower bound for this tier
                #
                #   @return [String, nil]
                optional :tier_lower_bound, String, nil?: true

                # @!method initialize(unit_amount:, tier_lower_bound: nil)
                #   Configuration for a single bulk pricing tier
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param tier_lower_bound [String, nil] The lower bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters#cadence
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
          end

          class MatrixWithThresholdDiscounts < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_threshold_discounts_config
            #   Configuration for matrix_with_threshold_discounts pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig]
            required :matrix_with_threshold_discounts_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig }

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :matrix_with_threshold_discounts]
            required :model_type, const: :matrix_with_threshold_discounts

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, matrix_with_threshold_discounts_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :matrix_with_threshold_discounts)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_threshold_discounts_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig] Configuration for matrix_with_threshold_discounts pricing
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :matrix_with_threshold_discounts] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts#matrix_with_threshold_discounts_config
            class MatrixWithThresholdDiscountsConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Unit price used for usage that does not match any defined matrix cell.
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute first_dimension
              #   First matrix dimension key.
              #
              #   @return [String]
              required :first_dimension, String

              # @!attribute matrix_values
              #   Per-cell unit prices.
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue
                         ]
                       end

              # @!attribute second_dimension
              #   Optional second matrix dimension key.
              #
              #   @return [String, nil]
              optional :second_dimension, String, nil?: true

              # @!attribute threshold_discount_groups
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>, nil]
              optional :threshold_discount_groups,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup
                         ]
                       end

              # @!method initialize(default_unit_amount:, first_dimension:, matrix_values:, second_dimension: nil, threshold_discount_groups: nil)
              #   Configuration for matrix_with_threshold_discounts pricing
              #
              #   @param default_unit_amount [String] Unit price used for usage that does not match any defined matrix cell.
              #
              #   @param first_dimension [String] First matrix dimension key.
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>] Per-cell unit prices.
              #
              #   @param second_dimension [String, nil] Optional second matrix dimension key.
              #
              #   @param threshold_discount_groups [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>]

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute first_dimension_value
                #
                #   @return [String]
                required :first_dimension_value, String

                # @!attribute unit_amount
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute second_dimension_value
                #
                #   @return [String, nil]
                optional :second_dimension_value, String, nil?: true

                # @!method initialize(first_dimension_value:, unit_amount:, second_dimension_value: nil)
                #   @param first_dimension_value [String]
                #   @param unit_amount [String]
                #   @param second_dimension_value [String, nil]
              end

              class ThresholdDiscountGroup < Orb::Internal::Type::BaseModel
                # @!attribute above_threshold_discount_percentage
                #   Discount rate applied to spend above the threshold.
                #
                #   @return [String]
                required :above_threshold_discount_percentage, String

                # @!attribute below_threshold_discount_percentage
                #   Discount rate applied to spend at or below the threshold. Set to 0 for no
                #   baseline discount.
                #
                #   @return [String]
                required :below_threshold_discount_percentage, String

                # @!attribute cell_coordinates
                #   Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                #   coordinate is `first,second` when the matrix has two dimensions, or just `first`
                #   for a single-dimension matrix. Example: `blue,circle;green,triangle`.
                #
                #   @return [String]
                required :cell_coordinates, String

                # @!attribute threshold_amount
                #
                #   @return [String]
                required :threshold_amount, String

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String, nil?: true

                # @!method initialize(above_threshold_discount_percentage:, below_threshold_discount_percentage:, cell_coordinates:, threshold_amount:, description: nil)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup}
                #   for more details.
                #
                #   @param above_threshold_discount_percentage [String] Discount rate applied to spend above the threshold.
                #
                #   @param below_threshold_discount_percentage [String] Discount rate applied to spend at or below the threshold. Set to 0 for no baseli
                #
                #   @param cell_coordinates [String] Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                #
                #   @param threshold_amount [String]
                #
                #   @param description [String, nil]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #   Configuration for tiered_with_proration pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig]
            required :tiered_with_proration_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig }

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig] Configuration for tiered_with_proration pricing
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :tiered_with_proration] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration#tiered_with_proration_config
            class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier with
              #   proration
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier] }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig}
              #   for more details.
              #
              #   Configuration for tiered_with_proration pricing
              #
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier with pr

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute tier_lower_bound
                #   Inclusive tier starting value
                #
                #   @return [String]
                required :tier_lower_bound, String

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(tier_lower_bound:, unit_amount:)
                #   Configuration for a single tiered with proration tier
                #
                #   @param tier_lower_bound [String] Inclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
              end
            end
          end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence }

            # @!attribute grouped_with_min_max_thresholds_config
            #   Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
            required :grouped_with_min_max_thresholds_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :grouped_with_min_max_thresholds]
            required :model_type, const: :grouped_with_min_max_thresholds

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_min_max_thresholds)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_min_max_thresholds_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              # @!attribute grouping_key
              #   The event property used to group before applying thresholds
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute maximum_charge
              #   The maximum amount to charge each group
              #
              #   @return [String]
              required :maximum_charge, String

              # @!attribute minimum_charge
              #   The minimum amount to charge each group, regardless of usage
              #
              #   @return [String]
              required :minimum_charge, String

              # @!attribute per_unit_rate
              #   The base price charged per group
              #
              #   @return [String]
              required :per_unit_rate, String

              # @!method initialize(grouping_key:, maximum_charge:, minimum_charge:, per_unit_rate:)
              #   Configuration for grouped_with_min_max_thresholds pricing
              #
              #   @param grouping_key [String] The event property used to group before applying thresholds
              #
              #   @param maximum_charge [String] The maximum amount to charge each group
              #
              #   @param minimum_charge [String] The minimum amount to charge each group, regardless of usage
              #
              #   @param per_unit_rate [String] The base price charged per group
            end
          end

          class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence }

            # @!attribute cumulative_grouped_allocation_config
            #   Configuration for cumulative_grouped_allocation pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig]
            required :cumulative_grouped_allocation_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :cumulative_grouped_allocation]
            required :model_type, const: :cumulative_grouped_allocation

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, cumulative_grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :cumulative_grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_allocation_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig] Configuration for cumulative_grouped_allocation pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :cumulative_grouped_allocation] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation#cumulative_grouped_allocation_config
            class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
              # @!attribute cumulative_allocation
              #   The overall allocation across all groups
              #
              #   @return [String]
              required :cumulative_allocation, String

              # @!attribute group_allocation
              #   The allocation per individual group
              #
              #   @return [String]
              required :group_allocation, String

              # @!attribute grouping_key
              #   The event property used to group usage before applying allocations
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute unit_amount
              #   The amount to charge for each unit outside of the allocation
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(cumulative_allocation:, group_allocation:, grouping_key:, unit_amount:)
              #   Configuration for cumulative_grouped_allocation pricing
              #
              #   @param cumulative_allocation [String] The overall allocation across all groups
              #
              #   @param group_allocation [String] The allocation per individual group
              #
              #   @param grouping_key [String] The event property used to group usage before applying allocations
              #
              #   @param unit_amount [String] The amount to charge for each unit outside of the allocation
            end
          end

          class DailyCreditAllowance < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::Cadence }

            # @!attribute daily_credit_allowance_config
            #   Configuration for daily_credit_allowance pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig]
            required :daily_credit_allowance_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :daily_credit_allowance]
            required :model_type, const: :daily_credit_allowance

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, daily_credit_allowance_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :daily_credit_allowance)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::Cadence] The cadence to bill for this price on.
            #
            #   @param daily_credit_allowance_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig] Configuration for daily_credit_allowance pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :daily_credit_allowance] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance#daily_credit_allowance_config
            class DailyCreditAllowanceConfig < Orb::Internal::Type::BaseModel
              # @!attribute daily_allowance
              #   Credits granted per day. Lose-it-or-use-it; does not roll over.
              #
              #   @return [String]
              required :daily_allowance, String

              # @!attribute default_unit_amount
              #   Default per-unit credit rate for any usage not bucketed into a specified
              #   matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute event_day_property
              #   Event property whose value identifies the day bucket the event belongs to (e.g.
              #   'event_day' set to an ISO date string in the customer's timezone). The allowance
              #   resets per distinct value of this property.
              #
              #   @return [String]
              required :event_day_property, String

              # @!attribute matrix_values
              #   Per-dimension credit rates
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue
                         ]
                       end

              # @!method initialize(daily_allowance:, default_unit_amount:, dimensions:, event_day_property:, matrix_values:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig}
              #   for more details.
              #
              #   Configuration for daily_credit_allowance pricing
              #
              #   @param daily_allowance [String] Credits granted per day. Lose-it-or-use-it; does not roll over.
              #
              #   @param default_unit_amount [String] Default per-unit credit rate for any usage not bucketed into a specified
              #   matrix\_
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param event_day_property [String] Event property whose value identifies the day bucket the event belongs to (e.g.
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>] Per-dimension credit rates

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this value by. For example, ["model"]
                #   could be used to apply a different credit rate to each AI model.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Credits charged per unit of usage matching the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue}
                #   for more details.
                #
                #   Per-dimension credit price for the daily credit allowance model.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this value by. For example, ["model"]
                #
                #   @param unit_amount [String] Credits charged per unit of usage matching the specified dimension_values
              end
            end
          end

          class MeteredAllowance < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute metered_allowance_config
            #   Configuration for metered_allowance pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::MeteredAllowanceConfig]
            required :metered_allowance_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::MeteredAllowanceConfig }

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :metered_allowance]
            required :model_type, const: :metered_allowance

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, metered_allowance_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :metered_allowance)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param metered_allowance_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::MeteredAllowanceConfig] Configuration for metered_allowance pricing
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :metered_allowance] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance#metered_allowance_config
            class MeteredAllowanceConfig < Orb::Internal::Type::BaseModel
              # @!attribute allowance_grouping_value
              #   The grouping_key value whose summed quantity represents the allowance for this
              #   period (e.g. 'storage_snapshot' emitting 3 × avg storage). Capped at consumption
              #   — credit can never exceed actual usage.
              #
              #   @return [String]
              required :allowance_grouping_value, String

              # @!attribute consumption_grouping_value
              #   The grouping_key value whose summed quantity represents consumption (e.g.
              #   'download'). Charged at unit_amount.
              #
              #   @return [String]
              required :consumption_grouping_value, String

              # @!attribute grouping_key
              #   Event property used to partition the metric into consumption and allowance
              #   quantities (e.g. 'event_name'). The metric is queried with this key and the two
              #   values below select which partition is which.
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute unit_amount
              #   Per-unit price applied to gross consumption and to the allowance credit.
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute allowance_display_name
              #   Sub-line label for the credit row (e.g. 'Up to 3x free egress').
              #
              #   @return [String, nil]
              optional :allowance_display_name, String

              # @!attribute consumption_display_name
              #   Sub-line label for the gross consumption row (e.g. 'bytes gotten').
              #
              #   @return [String, nil]
              optional :consumption_display_name, String

              # @!method initialize(allowance_grouping_value:, consumption_grouping_value:, grouping_key:, unit_amount:, allowance_display_name: nil, consumption_display_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance::MeteredAllowanceConfig}
              #   for more details.
              #
              #   Configuration for metered_allowance pricing
              #
              #   @param allowance_grouping_value [String] The grouping_key value whose summed quantity represents the allowance for this p
              #
              #   @param consumption_grouping_value [String] The grouping_key value whose summed quantity represents consumption (e.g. 'downl
              #
              #   @param grouping_key [String] Event property used to partition the metric into consumption and allowance quant
              #
              #   @param unit_amount [String] Per-unit price applied to gross consumption and to the allowance credit.
              #
              #   @param allowance_display_name [String] Sub-line label for the credit row (e.g. 'Up to 3x free egress').
              #
              #   @param consumption_display_name [String] Sub-line label for the gross consumption row (e.g. 'bytes gotten').
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::Percent::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :percent]
            required :model_type, const: :percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute percent_config
            #   Configuration for percent pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent::PercentConfig]
            required :percent_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::Percent::PercentConfig }

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::Percent::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, item_id:, name:, percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param percent_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent::PercentConfig] Configuration for percent pricing
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :percent] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent#percent_config
            class PercentConfig < Orb::Internal::Type::BaseModel
              # @!attribute percent
              #   Fraction of the component subtotals to charge (0 < percent <= 1).
              #
              #   @return [Float]
              required :percent, Float

              # @!attribute maximum_amount
              #   Maximum amount to charge. If unset, the fee has no upper bound.
              #
              #   @return [String, nil]
              optional :maximum_amount, String, nil?: true

              # @!attribute minimum_amount
              #   Minimum amount to charge. If unset, the fee is bounded below by 0.
              #
              #   @return [String, nil]
              optional :minimum_amount, String, nil?: true

              # @!attribute prorated
              #   If true, the minimum_amount is prorated based on the service period. The
              #   maximum_amount is an absolute cap (never prorated), and the percent applied to
              #   upstream subtotals is never prorated either.
              #
              #   @return [Boolean, nil]
              optional :prorated, Orb::Internal::Type::Boolean

              # @!method initialize(percent:, maximum_amount: nil, minimum_amount: nil, prorated: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent::PercentConfig}
              #   for more details.
              #
              #   Configuration for percent pricing
              #
              #   @param percent [Float] Fraction of the component subtotals to charge (0 < percent <= 1).
              #
              #   @param maximum_amount [String, nil] Maximum amount to charge. If unset, the fee has no upper bound.
              #
              #   @param minimum_amount [String, nil] Minimum amount to charge. If unset, the fee is bounded below by 0.
              #
              #   @param prorated [Boolean] If true, the minimum_amount is prorated based on the service period. The maximum
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::Cadence }

            # @!attribute event_output_config
            #   Configuration for event_output pricing
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::EventOutputConfig]
            required :event_output_config,
                     -> { Orb::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::EventOutputConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :event_output]
            required :model_type, const: :event_output

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute license_type_id
            #   The ID of the license type to associate with this price.
            #
            #   @return [String, nil]
            optional :license_type_id, String, nil?: true

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

            # @!method initialize(cadence:, event_output_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, reference_id: nil, model_type: :event_output)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::Cadence] The cadence to bill for this price on.
            #
            #   @param event_output_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::EventOutputConfig] Configuration for event_output pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
            #
            #   @param model_type [Symbol, :event_output] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput#event_output_config
            class EventOutputConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_rating_key
              #   The key in the event data to extract the unit rate from.
              #
              #   @return [String]
              required :unit_rating_key, String

              # @!attribute default_unit_rate
              #   If provided, this amount will be used as the unit rate when an event does not
              #   have a value for the `unit_rating_key`. If not provided, events missing a unit
              #   rate will be ignored.
              #
              #   @return [String, nil]
              optional :default_unit_rate, String, nil?: true

              # @!attribute grouping_key
              #   An optional key in the event data to group by (e.g., event ID). All events will
              #   also be grouped by their unit rate.
              #
              #   @return [String, nil]
              optional :grouping_key, String, nil?: true

              # @!method initialize(unit_rating_key:, default_unit_rate: nil, grouping_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput::EventOutputConfig}
              #   for more details.
              #
              #   Configuration for event_output pricing
              #
              #   @param unit_rating_key [String] The key in the event data to extract the unit rate from.
              #
              #   @param default_unit_rate [String, nil] If provided, this amount will be used as the unit rate when an event does not ha
              #
              #   @param grouping_key [String, nil] An optional key in the event data to group by (e.g., event ID). All events will
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithFilters, Orb::Models::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionGroupedTieredPrice, Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice, Orb::Models::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionMatrixWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithThresholdDiscounts, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration, Orb::Models::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionGroupedTieredPackagePrice, Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedAllocation, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::DailyCreditAllowance, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MeteredAllowance, Orb::Models::NewSubscriptionMinimumCompositePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Percent, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::EventOutput)]
        end
      end
    end
  end
end
