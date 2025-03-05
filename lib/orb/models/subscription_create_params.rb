# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

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

      # @!attribute [r] align_billing_with_subscription_start_date
      #
      #   @return [Boolean, nil]
      optional :align_billing_with_subscription_start_date, Orb::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :align_billing_with_subscription_start_date

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #     charged with the saved payment method on the due date. If not specified, this
      #     defaults to the behavior configured for this customer.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::BooleanModel, nil?: true

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
      #     by its redemption code, or cannot be redeemed, an error response will be
      #     returned and the subscription creation or plan change will not be scheduled.
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
      #     is not provided, it is determined by the plan configuration.
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

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

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
      #   Specifies which version of the plan to subscribe to. If null, the default
      #     version will be used.
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

      # @!attribute start_date
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

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
      #   # @param add_adjustments [Array<Orb::Models::AddSubscriptionAdjustmentParams>, nil]
      #   # @param add_prices [Array<Orb::Models::AddSubscriptionPriceParams>, nil]
      #   # @param align_billing_with_subscription_start_date [Boolean]
      #   # @param auto_collection [Boolean, nil]
      #   # @param aws_region [String, nil]
      #   # @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, nil]
      #   # @param coupon_redemption_code [String, nil]
      #   # @param credits_overage_rate [Float, nil]
      #   # @param customer_id [String, nil]
      #   # @param default_invoice_memo [String, nil]
      #   # @param end_date [Time, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param external_marketplace [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      #   # @param external_marketplace_reporting_id [String, nil]
      #   # @param external_plan_id [String, nil]
      #   # @param filter [String, nil]
      #   # @param initial_phase_order [Integer, nil]
      #   # @param invoicing_threshold [String, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param net_terms [Integer, nil]
      #   # @param per_credit_overage_amount [Float, nil]
      #   # @param plan_id [String, nil]
      #   # @param plan_version_number [Integer, nil]
      #   # @param price_overrides [Array<Object>, nil]
      #   # @param remove_adjustments [Array<Orb::Models::RemoveSubscriptionAdjustmentParams>, nil]
      #   # @param remove_prices [Array<Orb::Models::RemoveSubscriptionPriceParams>, nil]
      #   # @param replace_adjustments [Array<Orb::Models::ReplaceSubscriptionAdjustmentParams>, nil]
      #   # @param replace_prices [Array<Orb::Models::ReplaceSubscriptionPriceParams>, nil]
      #   # @param start_date [Time, nil]
      #   # @param trial_duration_days [Integer, nil]
      #   # @param usage_customer_ids [Array<String>, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     add_adjustments: nil,
      #     add_prices: nil,
      #     align_billing_with_subscription_start_date: nil,
      #     auto_collection: nil,
      #     aws_region: nil,
      #     billing_cycle_anchor_configuration: nil,
      #     coupon_redemption_code: nil,
      #     credits_overage_rate: nil,
      #     customer_id: nil,
      #     default_invoice_memo: nil,
      #     end_date: nil,
      #     external_customer_id: nil,
      #     external_marketplace: nil,
      #     external_marketplace_reporting_id: nil,
      #     external_plan_id: nil,
      #     filter: nil,
      #     initial_phase_order: nil,
      #     invoicing_threshold: nil,
      #     metadata: nil,
      #     net_terms: nil,
      #     per_credit_overage_amount: nil,
      #     plan_id: nil,
      #     plan_version_number: nil,
      #     price_overrides: nil,
      #     remove_adjustments: nil,
      #     remove_prices: nil,
      #     replace_adjustments: nil,
      #     replace_prices: nil,
      #     start_date: nil,
      #     trial_duration_days: nil,
      #     usage_customer_ids: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

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
      # @deprecated
      #
      # @example
      # ```ruby
      # case external_marketplace
      # in :google
      #   # ...
      # in :aws
      #   # ...
      # in :azure
      #   # ...
      # end
      # ```
      class ExternalMarketplace < Orb::Enum
        GOOGLE = :google
        AWS = :aws
        AZURE = :azure

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
