# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#create
    class SubscriptionCreateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice>, nil]
      optional :add_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddPrice] },
               nil?: true

      # @!attribute [r] align_billing_with_subscription_start_date
      #
      #   @return [Boolean, nil]
      optional :align_billing_with_subscription_start_date, Orb::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :align_billing_with_subscription_start_date

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. If not specified, this
      #   defaults to the behavior configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute aws_region
      #
      #   @return [String, nil]
      optional :aws_region, String, nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, nil]
      optional :billing_cycle_anchor_configuration,
               -> { Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration },
               nil?: true

      # @!attribute coupon_redemption_code
      #   Redemption code to be used for this subscription. If the coupon cannot be found
      #   by its redemption code, or cannot be redeemed, an error response will be
      #   returned and the subscription creation or plan change will not be scheduled.
      #
      #   @return [String, nil]
      optional :coupon_redemption_code, String, nil?: true

      # @!attribute credits_overage_rate
      #
      #   @return [Float, nil]
      optional :credits_overage_rate, Float, nil?: true

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
      #
      #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      optional :external_marketplace,
               enum: -> { Orb::Models::SubscriptionCreateParams::ExternalMarketplace },
               nil?: true

      # @!attribute external_marketplace_reporting_id
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

      # @!attribute net_terms
      #   The net terms determines the difference between the invoice date and the issue
      #   date for the invoice. If you intend the invoice to be due on issue, set this
      #   to 0. If not provided, this defaults to the value specified in the plan.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!attribute per_credit_overage_amount
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
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::RemoveAdjustment] },
               nil?: true

      # @!attribute remove_prices
      #   Plan prices to be removed from the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Plan adjustments to be replaced with additional adjustments on the subscription.
      #   (Only available for accounts that have migrated off of legacy subscription
      #   overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment] },
               nil?: true

      # @!attribute replace_prices
      #   Plan prices to be replaced with additional prices on the subscription. (Only
      #   available for accounts that have migrated off of legacy subscription overrides)
      #
      #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice>, nil]
      optional :replace_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::ReplacePrice] },
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

      # @!method initialize(add_adjustments: nil, add_prices: nil, align_billing_with_subscription_start_date: nil, auto_collection: nil, aws_region: nil, billing_cycle_anchor_configuration: nil, coupon_redemption_code: nil, credits_overage_rate: nil, customer_id: nil, default_invoice_memo: nil, end_date: nil, external_customer_id: nil, external_marketplace: nil, external_marketplace_reporting_id: nil, external_plan_id: nil, filter: nil, initial_phase_order: nil, invoicing_threshold: nil, metadata: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, plan_version_number: nil, price_overrides: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, start_date: nil, trial_duration_days: nil, usage_customer_ids: nil, request_options: {})
      #   @param add_adjustments [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment>, nil]
      #   @param add_prices [Array<Orb::Models::SubscriptionCreateParams::AddPrice>, nil]
      #   @param align_billing_with_subscription_start_date [Boolean]
      #   @param auto_collection [Boolean, nil]
      #   @param aws_region [String, nil]
      #   @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, nil]
      #   @param coupon_redemption_code [String, nil]
      #   @param credits_overage_rate [Float, nil]
      #   @param customer_id [String, nil]
      #   @param default_invoice_memo [String, nil]
      #   @param end_date [Time, nil]
      #   @param external_customer_id [String, nil]
      #   @param external_marketplace [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      #   @param external_marketplace_reporting_id [String, nil]
      #   @param external_plan_id [String, nil]
      #   @param filter [String, nil]
      #   @param initial_phase_order [Integer, nil]
      #   @param invoicing_threshold [String, nil]
      #   @param metadata [Hash{Symbol=>String, nil}, nil]
      #   @param net_terms [Integer, nil]
      #   @param per_credit_overage_amount [Float, nil]
      #   @param plan_id [String, nil]
      #   @param plan_version_number [Integer, nil]
      #   @param price_overrides [Array<Object>, nil]
      #   @param remove_adjustments [Array<Orb::Models::SubscriptionCreateParams::RemoveAdjustment>, nil]
      #   @param remove_prices [Array<Orb::Models::SubscriptionCreateParams::RemovePrice>, nil]
      #   @param replace_adjustments [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment>, nil]
      #   @param replace_prices [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice>, nil]
      #   @param start_date [Time, nil]
      #   @param trial_duration_days [Integer, nil]
      #   @param usage_customer_ids [Array<String>, nil]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum]
        required :adjustment, union: -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment }

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
        #   @param adjustment [Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum]
        #   @param end_date [Time, nil]
        #   @param plan_phase_order [Integer, nil]
        #   @param start_date [Time, nil]

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionCreateParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum, -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum }

          variant :maximum, -> { Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum }

          class NewPercentageDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   @param applies_to_price_ids [Array<String>]
            #   @param percentage_discount [Float]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class NewUsageDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   @param applies_to_price_ids [Array<String>]
            #   @param usage_discount [Float]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class NewAmountDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   @param amount_discount [String]
            #   @param applies_to_price_ids [Array<String>]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class NewMinimum < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            #   @param applies_to_price_ids [Array<String>]
            #   @param item_id [String]
            #   @param minimum_amount [String]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :minimum]
          end

          class NewMaximum < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            #   @param applies_to_price_ids [Array<String>]
            #   @param maximum_amount [String]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum)]
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #   price.
        #
        #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Discount>, nil]
        optional :discounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddPrice::Discount] },
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
        #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #   this price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        optional :price, union: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price }, nil?: true

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
        #   @param allocation_price [Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, nil]
        #   @param discounts [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Discount>, nil]
        #   @param end_date [Time, nil]
        #   @param external_price_id [String, nil]
        #   @param maximum_amount [String, nil]
        #   @param minimum_amount [String, nil]
        #   @param plan_phase_order [Integer, nil]
        #   @param price [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        #   @param price_id [String, nil]
        #   @param start_date [Time, nil]

        # @see Orb::Models::SubscriptionCreateParams::AddPrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence]
          required :cadence, enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence }

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
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String]
          #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence]
          #   @param currency [String]
          #   @param expires_at_end_of_cadence [Boolean]

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice#cadence
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
          #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType }

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
          #   @param discount_type [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType]
          #   @param amount_discount [String, nil]
          #   @param percentage_discount [Float, nil]
          #   @param usage_discount [Float, nil]

          # @see Orb::Models::SubscriptionCreateParams::AddPrice::Discount#discount_type
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
        # @see Orb::Models::SubscriptionCreateParams::AddPrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice }

          variant :matrix, -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice }

          variant :tiered, -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice }

          variant :bps, -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice }

          variant :bulk, -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice }

          class NewSubscriptionUnitPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String]
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param package_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice#package_config
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
              #   @param package_amount [String]
              #   @param package_size [Integer]
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence]
            #   @param item_id [String]
            #   @param matrix_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice#matrix_config
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
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String]
              #   @param dimensions [Array<String, nil>]
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]

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
                #   @param dimension_values [Array<String, nil>]
                #   @param unit_amount [String]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]

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
                #   @param first_unit [Float]
                #   @param unit_amount [String]
                #   @param last_unit [Float, nil]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_bps_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]

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
                #   @param bps [Float]
                #   @param minimum_amount [String]
                #   @param maximum_amount [String, nil]
                #   @param per_unit_maximum [String, nil]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration },
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
            #   @param bps_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice#bps_config
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
              #   @param bps [Float]
              #   @param per_unit_maximum [String, nil]
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_bps_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]

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
                #   @param bps [Float]
                #   @param maximum_amount [String, nil]
                #   @param per_unit_maximum [String, nil]
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_config [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]

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
                #   @param unit_amount [String]
                #   @param maximum_units [Float, nil]
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            #   @param item_id [String]
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
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
          #   @return [Array(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice)]
        end
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
        #   @param day [Integer]
        #   @param month [Integer, nil]
        #   @param year [Integer, nil]
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
        #   @param adjustment_id [String]
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
        #   @param external_price_id [String, nil]
        #   @param price_id [String, nil]
      end

      class ReplaceAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum]
        required :adjustment, union: -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the subscription.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!method initialize(adjustment:, replaces_adjustment_id:)
        #   @param adjustment [Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum]
        #   @param replaces_adjustment_id [String]

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionCreateParams::ReplaceAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum, -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum }

          variant :maximum, -> { Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum }

          class NewPercentageDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   @param applies_to_price_ids [Array<String>]
            #   @param percentage_discount [Float]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class NewUsageDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   @param applies_to_price_ids [Array<String>]
            #   @param usage_discount [Float]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class NewAmountDiscount < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   @param amount_discount [String]
            #   @param applies_to_price_ids [Array<String>]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class NewMinimum < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            #   @param applies_to_price_ids [Array<String>]
            #   @param item_id [String]
            #   @param minimum_amount [String]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :minimum]
          end

          class NewMaximum < Orb::Internal::Type::BaseModel
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

            # @!attribute [r] is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_invoice_level

            # @!method initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            #   @param applies_to_price_ids [Array<String>]
            #   @param maximum_amount [String]
            #   @param is_invoice_level [Boolean]
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum)]
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
        #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        #   replacement price.
        #
        #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount>, nil]
        optional :discounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount] },
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
        #   the replacement price.
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute minimum_amount
        #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   the replacement price.
        #
        #   @return [String, nil]
        optional :minimum_amount, String, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        optional :price, union: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(replaces_price_id:, allocation_price: nil, discounts: nil, external_price_id: nil, fixed_price_quantity: nil, maximum_amount: nil, minimum_amount: nil, price: nil, price_id: nil)
        #   @param replaces_price_id [String]
        #   @param allocation_price [Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, nil]
        #   @param discounts [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount>, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param maximum_amount [String, nil]
        #   @param minimum_amount [String, nil]
        #   @param price [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice, nil]
        #   @param price_id [String, nil]

        # @see Orb::Models::SubscriptionCreateParams::ReplacePrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence }

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
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String]
          #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence]
          #   @param currency [String]
          #   @param expires_at_end_of_cadence [Boolean]

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice#cadence
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
          #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType]
          required :discount_type,
                   enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType }

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
          #   @param discount_type [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType]
          #   @param amount_discount [String, nil]
          #   @param percentage_discount [Float, nil]
          #   @param usage_discount [Float, nil]

          # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount#discount_type
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
        # @see Orb::Models::SubscriptionCreateParams::ReplacePrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice }

          variant :matrix,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice }

          variant :tiered,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice }

          variant :bps, -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice }

          variant :bulk, -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice }

          class NewSubscriptionUnitPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String]
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param package_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice#package_config
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
              #   @param package_amount [String]
              #   @param package_size [Integer]
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence]
            #   @param item_id [String]
            #   @param matrix_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice#matrix_config
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
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String]
              #   @param dimensions [Array<String, nil>]
              #   @param matrix_values [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue>]

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
                #   @param dimension_values [Array<String, nil>]
                #   @param unit_amount [String]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier>]

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
                #   @param first_unit [Float]
                #   @param unit_amount [String]
                #   @param last_unit [Float, nil]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_bps_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier>]

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
                #   @param bps [Float]
                #   @param minimum_amount [String]
                #   @param maximum_amount [String, nil]
                #   @param per_unit_maximum [String, nil]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration },
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
            #   @param bps_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice#bps_config
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
              #   @param bps [Float]
              #   @param per_unit_maximum [String, nil]
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_bps_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                         ]
                       end

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier>]

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
                #   @param bps [Float]
                #   @param maximum_amount [String, nil]
                #   @param per_unit_maximum [String, nil]
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_config [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier>]

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
                #   @param unit_amount [String]
                #   @param maximum_units [Float, nil]
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence]
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration },
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
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
            #   @param item_id [String]
            #   @param name [String]
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
            #   @param item_id [String]
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
            #   @param item_id [String]
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence }

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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration },
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
            #   @return [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration },
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
            #   @param cadence [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence]
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #   @param item_id [String]
            #   @param name [String]
            #   @param billable_metric_id [String, nil]
            #   @param billed_in_advance [Boolean, nil]
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            #   @param conversion_rate [Float, nil]
            #   @param currency [String, nil]
            #   @param external_price_id [String, nil]
            #   @param fixed_price_quantity [Float, nil]
            #   @param invoice_grouping_key [String, nil]
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   @param metadata [Hash{Symbol=>String, nil}, nil]
            #   @param reference_id [String, nil]
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice#cadence
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

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer]
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
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
          #   @return [Array(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice)]
        end
      end
    end
  end
end
