# typed: strong

module Orb
  module Models
    class SubscriptionCreateParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # Additional adjustments to be added to the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment])) }
      attr_accessor :add_adjustments

      # Additional prices to be added to the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice])) }
      attr_accessor :add_prices

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :align_billing_with_subscription_start_date

      sig { params(align_billing_with_subscription_start_date: T::Boolean).void }
      attr_writer :align_billing_with_subscription_start_date

      # Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. If not specified, this
      #   defaults to the behavior configured for this customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(String)) }
      attr_accessor :aws_region

      sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration)) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration: T.nilable(
            T.any(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, Orb::Util::AnyHash)
          )
        )
          .void
      end
      attr_writer :billing_cycle_anchor_configuration

      # Redemption code to be used for this subscription. If the coupon cannot be found
      #   by its redemption code, or cannot be redeemed, an error response will be
      #   returned and the subscription creation or plan change will not be scheduled.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig { returns(T.nilable(Float)) }
      attr_accessor :credits_overage_rate

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Determines the default memo on this subscription's invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::ExternalMarketplace::OrSymbol)) }
      attr_accessor :external_marketplace

      sig { returns(T.nilable(String)) }
      attr_accessor :external_marketplace_reporting_id

      # The external_plan_id of the plan that the given subscription should be switched
      #   to. Note that either this property or `plan_id` must be specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # An additional filter to apply to usage queries. This filter must be expressed as
      #   a boolean
      #   [computed property](/extensibility/advanced-metrics#computed-properties). If
      #   null, usage queries will not include any additional filter.
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # The phase of the plan to start with
      sig { returns(T.nilable(Integer)) }
      attr_accessor :initial_phase_order

      # When this subscription's accrued usage reaches this threshold, an invoice will
      #   be issued for the subscription. If not specified, invoices will only be issued
      #   at the end of the billing period.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The net terms determines the difference between the invoice date and the issue
      #   date for the invoice. If you intend the invoice to be due on issue, set this
      #   to 0. If not provided, this defaults to the value specified in the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(Float)) }
      attr_accessor :per_credit_overage_amount

      # The plan that the given subscription should be switched to. Note that either
      #   this property or `external_plan_id` must be specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # Specifies which version of the plan to subscribe to. If null, the default
      #   version will be used.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_version_number

      # Optionally provide a list of overrides for prices on the plan
      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :price_overrides

      # Plan adjustments to be removed from the subscription. (Only available for
      #   accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment])) }
      attr_accessor :remove_adjustments

      # Plan prices to be removed from the subscription. (Only available for accounts
      #   that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice])) }
      attr_accessor :remove_prices

      # Plan adjustments to be replaced with additional adjustments on the subscription.
      #   (Only available for accounts that have migrated off of legacy subscription
      #   overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment])) }
      attr_accessor :replace_adjustments

      # Plan prices to be replaced with additional prices on the subscription. (Only
      #   available for accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice])) }
      attr_accessor :replace_prices

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date

      # The duration of the trial period in days. If not provided, this defaults to the
      #   value specified in the plan. If `0` is provided, the trial on the plan will be
      #   skipped.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_duration_days

      # A list of customer IDs whose usage events will be aggregated and billed under
      #   this subscription. By default, a subscription only considers usage events
      #   associated with its attached customer's customer_id. When usage_customer_ids is
      #   provided, the subscription includes usage events from the specified customers
      #   only. Provided usage_customer_ids must be either the customer for this
      #   subscription itself, or any of that customer's children.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      sig do
        params(
          add_adjustments: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddAdjustment, Orb::Util::AnyHash)]),
          add_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddPrice, Orb::Util::AnyHash)]),
          align_billing_with_subscription_start_date: T::Boolean,
          auto_collection: T.nilable(T::Boolean),
          aws_region: T.nilable(String),
          billing_cycle_anchor_configuration: T.nilable(
            T.any(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, Orb::Util::AnyHash)
          ),
          coupon_redemption_code: T.nilable(String),
          credits_overage_rate: T.nilable(Float),
          customer_id: T.nilable(String),
          default_invoice_memo: T.nilable(String),
          end_date: T.nilable(Time),
          external_customer_id: T.nilable(String),
          external_marketplace: T.nilable(Orb::Models::SubscriptionCreateParams::ExternalMarketplace::OrSymbol),
          external_marketplace_reporting_id: T.nilable(String),
          external_plan_id: T.nilable(String),
          filter: T.nilable(String),
          initial_phase_order: T.nilable(Integer),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          per_credit_overage_amount: T.nilable(Float),
          plan_id: T.nilable(String),
          plan_version_number: T.nilable(Integer),
          price_overrides: T.nilable(T::Array[T.anything]),
          remove_adjustments: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::RemoveAdjustment, Orb::Util::AnyHash)]),
          remove_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::RemovePrice, Orb::Util::AnyHash)]),
          replace_adjustments: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplaceAdjustment, Orb::Util::AnyHash)]),
          replace_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice, Orb::Util::AnyHash)]),
          start_date: T.nilable(Time),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        add_adjustments: nil,
        add_prices: nil,
        align_billing_with_subscription_start_date: nil,
        auto_collection: nil,
        aws_region: nil,
        billing_cycle_anchor_configuration: nil,
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        customer_id: nil,
        default_invoice_memo: nil,
        end_date: nil,
        external_customer_id: nil,
        external_marketplace: nil,
        external_marketplace_reporting_id: nil,
        external_plan_id: nil,
        filter: nil,
        initial_phase_order: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        per_credit_overage_amount: nil,
        plan_id: nil,
        plan_version_number: nil,
        price_overrides: nil,
        remove_adjustments: nil,
        remove_prices: nil,
        replace_adjustments: nil,
        replace_prices: nil,
        start_date: nil,
        trial_duration_days: nil,
        usage_customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]),
              add_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]),
              align_billing_with_subscription_start_date: T::Boolean,
              auto_collection: T.nilable(T::Boolean),
              aws_region: T.nilable(String),
              billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration),
              coupon_redemption_code: T.nilable(String),
              credits_overage_rate: T.nilable(Float),
              customer_id: T.nilable(String),
              default_invoice_memo: T.nilable(String),
              end_date: T.nilable(Time),
              external_customer_id: T.nilable(String),
              external_marketplace: T.nilable(Orb::Models::SubscriptionCreateParams::ExternalMarketplace::OrSymbol),
              external_marketplace_reporting_id: T.nilable(String),
              external_plan_id: T.nilable(String),
              filter: T.nilable(String),
              initial_phase_order: T.nilable(Integer),
              invoicing_threshold: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              net_terms: T.nilable(Integer),
              per_credit_overage_amount: T.nilable(Float),
              plan_id: T.nilable(String),
              plan_version_number: T.nilable(Integer),
              price_overrides: T.nilable(T::Array[T.anything]),
              remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]),
              remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]),
              replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]),
              replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]),
              start_date: T.nilable(Time),
              trial_duration_days: T.nilable(Integer),
              usage_customer_ids: T.nilable(T::Array[String]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AddAdjustment < Orb::BaseModel
        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        # The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The phase to add this adjustment to.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        # The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. If null, the adjustment will
        #   start when the phase or subscription starts.
        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Util::AnyHash,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
            ),
            end_date: T.nilable(Time),
            plan_phase_order: T.nilable(Integer),
            start_date: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
                ),
                end_date: T.nilable(Time),
                plan_phase_order: T.nilable(Integer),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Union

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    percentage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    usage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    item_id: String,
                    minimum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    maximum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum]
              )
          end
          def self.variants
          end
        end
      end

      class AddPrice < Orb::BaseModel
        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        #   price.
        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount])) }
        attr_accessor :discounts

        # The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription. If null, billing will end when the phase or
        #   subscription ends.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #   this price.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   this price.
        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The phase to add this price to.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        # The definition of a new price to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
        end
        attr_accessor :price

        # The id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        # The start date of the price interval. This is the date that the price will start
        #   billing on the subscription. If null, billing will start when the phase or
        #   subscription starts.
        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, Orb::Util::AnyHash)),
            discounts: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Discount, Orb::Util::AnyHash)]),
            end_date: T.nilable(Time),
            external_price_id: T.nilable(String),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            plan_phase_order: T.nilable(Integer),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                Orb::Util::AnyHash,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            ),
            price_id: T.nilable(String),
            start_date: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(
          allocation_price: nil,
          discounts: nil,
          end_date: nil,
          external_price_id: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          plan_phase_order: nil,
          price: nil,
          price_id: nil,
          start_date: nil
        )
        end

        sig do
          override
            .returns(
              {
                allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice),
                discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount]),
                end_date: T.nilable(Time),
                external_price_id: T.nilable(String),
                maximum_amount: T.nilable(String),
                minimum_amount: T.nilable(String),
                plan_phase_order: T.nilable(Integer),
                price: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
                  )
                ),
                price_id: T.nilable(String),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        class AllocationPrice < Orb::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          attr_accessor :amount

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::OrSymbol) }
          attr_accessor :cadence

          # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          sig { returns(String) }
          attr_accessor :currency

          # Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          sig { returns(T::Boolean) }
          attr_accessor :expires_at_end_of_cadence

          # The definition of a new allocation price to create and add to the subscription.
          sig do
            params(
              amount: String,
              cadence: Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::OrSymbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  cadence: Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::OrSymbol,
                  currency: String,
                  expires_at_end_of_cadence: T::Boolean
                }
              )
          end
          def to_hash
          end

          # The cadence at which to allocate the amount to the customer.
          module Cadence
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol) }

            ONE_TIME =
              T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol)
            MONTHLY =
              T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol)
            QUARTERLY =
              T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol)
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol
              )
            ANNUAL =
              T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol)
            CUSTOM =
              T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class Discount < Orb::BaseModel
          sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::OrSymbol) }
          attr_accessor :discount_type

          # Only available if discount_type is `amount`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          # Only available if discount_type is `percentage`. This is a number between 0
          #   and 1.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          # Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
          sig { returns(T.nilable(Float)) }
          attr_accessor :usage_discount

          sig do
            params(
              discount_type: Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::OrSymbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            )
              .returns(T.attached_class)
          end
          def self.new(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override
              .returns(
                {
                  discount_type: Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::OrSymbol,
                  amount_discount: T.nilable(String),
                  percentage_discount: T.nilable(Float),
                  usage_discount: T.nilable(Float)
                }
              )
          end
          def to_hash
          end

          module DiscountType
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::TaggedSymbol) }

            PERCENTAGE =
              T.let(:percentage, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::TaggedSymbol)
            USAGE =
              T.let(:usage, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::TaggedSymbol)
            AMOUNT =
              T.let(:amount, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Union

          class NewSubscriptionUnitPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :unit_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class UnitConfig < Orb::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(unit_amount:)
              end

              sig { override.returns({unit_amount: String}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
            end
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :package_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class PackageConfig < Orb::BaseModel
              # A currency amount to rate usage by
              sig { returns(String) }
              attr_accessor :package_amount

              # An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
              def self.new(package_amount:, package_size:)
              end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :matrix_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  Orb::Util::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class MatrixConfig < Orb::BaseModel
              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                      ]
                    }
                  )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                # One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                # Unit price for the specified dimension_values
                sig { returns(String) }
                attr_accessor :unit_amount

                sig do
                  params(
                    dimension_values: T::Array[T.nilable(String)],
                    unit_amount: String
                  ).returns(T.attached_class)
                end
                def self.new(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig) }
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class TieredConfig < Orb::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Inclusive tier starting value
                sig { returns(Float) }
                attr_accessor :first_unit

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Exclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig do
                  params(
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(first_unit:, unit_amount:, last_unit: nil)
                end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
            end
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_bps_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Per-event basis point rate
                sig { returns(Float) }
                attr_accessor :bps

                # Inclusive tier starting value
                sig { returns(String) }
                attr_accessor :minimum_amount

                # Exclusive tier ending value
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # Per unit maximum to charge
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        bps: Float,
                        minimum_amount: String,
                        maximum_amount: T.nilable(String),
                        per_unit_maximum: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
            end
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Basis points to rate on
                sig { returns(Float) }
                attr_accessor :bps

                # Upper bound for tier
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # The maximum amount to charge for any one event
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String))
                    .returns(T.attached_class)
                end
                def self.new(bps:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
                def self.new(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :threshold_total_amount
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_percent
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package_with_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_with_proration_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_unit_pricing_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_tiered_pricing_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :cumulative_grouped_bulk_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              cumulative_grouped_bulk_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :max_group_tiered_package_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              max_group_tiered_package_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_metered_minimum_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_with_metered_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :matrix_with_display_name_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              matrix_with_display_name_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_package_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_tiered_package_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice]
              )
          end
          def self.variants
          end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        # The day of the month on which the billing cycle is anchored. If the maximum
        #   number of days in a month is greater than this value, the last day of the month
        #   is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        #   period begins on the 30th.
        sig { returns(Integer) }
        attr_accessor :day

        # The month on which the billing cycle is anchored (e.g. a quarterly price
        #   anchored in February would have cycles starting February, May, August, and
        #   November).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        #   anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig do
          params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).returns(T.attached_class)
        end
        def self.new(day:, month: nil, year: nil)
        end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash
        end
      end

      module ExternalMarketplace
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol) }

        GOOGLE = T.let(:google, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)
        AWS = T.let(:aws, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)
        AZURE = T.let(:azure, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol]) }
        def self.values
        end
      end

      class RemoveAdjustment < Orb::BaseModel
        # The id of the adjustment to remove on the subscription.
        sig { returns(String) }
        attr_accessor :adjustment_id

        sig { params(adjustment_id: String).returns(T.attached_class) }
        def self.new(adjustment_id:)
        end

        sig { override.returns({adjustment_id: String}) }
        def to_hash
        end
      end

      class RemovePrice < Orb::BaseModel
        # The external price id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(external_price_id: T.nilable(String), price_id: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(external_price_id: nil, price_id: nil)
        end

        sig { override.returns({external_price_id: T.nilable(String), price_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class ReplaceAdjustment < Orb::BaseModel
        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        # The id of the adjustment on the plan to replace in the subscription.
        sig { returns(String) }
        attr_accessor :replaces_adjustment_id

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Util::AnyHash,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
            ),
            replaces_adjustment_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment:, replaces_adjustment_id:)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
                ),
                replaces_adjustment_id: String
              }
            )
        end
        def to_hash
        end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Union

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    percentage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    usage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    item_id: String,
                    minimum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    maximum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum]
              )
          end
          def self.variants
          end
        end
      end

      class ReplacePrice < Orb::BaseModel
        # The id of the price on the plan to replace in the subscription.
        sig { returns(String) }
        attr_accessor :replaces_price_id

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        #   replacement price.
        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount])) }
        attr_accessor :discounts

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The new quantity of the price, if the price is a fixed price.
        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        #   the replacement price.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        #   the replacement price.
        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The definition of a new price to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
        end
        attr_accessor :price

        # The id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            replaces_price_id: String,
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, Orb::Util::AnyHash)),
            discounts: T.nilable(
              T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount, Orb::Util::AnyHash)]
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                Orb::Util::AnyHash,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            ),
            price_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          replaces_price_id:,
          allocation_price: nil,
          discounts: nil,
          external_price_id: nil,
          fixed_price_quantity: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          price: nil,
          price_id: nil
        )
        end

        sig do
          override
            .returns(
              {
                replaces_price_id: String,
                allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice),
                discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount]),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                maximum_amount: T.nilable(String),
                minimum_amount: T.nilable(String),
                price: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
                  )
                ),
                price_id: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class AllocationPrice < Orb::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          attr_accessor :amount

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::OrSymbol) }
          attr_accessor :cadence

          # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          sig { returns(String) }
          attr_accessor :currency

          # Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          sig { returns(T::Boolean) }
          attr_accessor :expires_at_end_of_cadence

          # The definition of a new allocation price to create and add to the subscription.
          sig do
            params(
              amount: String,
              cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::OrSymbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::OrSymbol,
                  currency: String,
                  expires_at_end_of_cadence: T::Boolean
                }
              )
          end
          def to_hash
          end

          # The cadence at which to allocate the amount to the customer.
          module Cadence
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol) }

            ONE_TIME =
              T.let(
                :one_time,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )
            ANNUAL =
              T.let(
                :annual,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Discount < Orb::BaseModel
          sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::OrSymbol) }
          attr_accessor :discount_type

          # Only available if discount_type is `amount`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          # Only available if discount_type is `percentage`. This is a number between 0
          #   and 1.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          # Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
          sig { returns(T.nilable(Float)) }
          attr_accessor :usage_discount

          sig do
            params(
              discount_type: Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::OrSymbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            )
              .returns(T.attached_class)
          end
          def self.new(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override
              .returns(
                {
                  discount_type: Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::OrSymbol,
                  amount_discount: T.nilable(String),
                  percentage_discount: T.nilable(Float),
                  usage_discount: T.nilable(Float)
                }
              )
          end
          def to_hash
          end

          module DiscountType
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::TaggedSymbol) }

            PERCENTAGE =
              T.let(
                :percentage,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::TaggedSymbol
              )
            USAGE =
              T.let(:usage, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::TaggedSymbol)
            AMOUNT =
              T.let(:amount, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Union

          class NewSubscriptionUnitPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :unit_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class UnitConfig < Orb::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(unit_amount:)
              end

              sig { override.returns({unit_amount: String}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
            end
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :package_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class PackageConfig < Orb::BaseModel
              # A currency amount to rate usage by
              sig { returns(String) }
              attr_accessor :package_amount

              # An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
              def self.new(package_amount:, package_size:)
              end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
              )
            end
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :matrix_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  Orb::Util::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::OrSymbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class MatrixConfig < Orb::BaseModel
              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                      ]
                    }
                  )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                # One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                # Unit price for the specified dimension_values
                sig { returns(String) }
                attr_accessor :unit_amount

                sig do
                  params(
                    dimension_values: T::Array[T.nilable(String)],
                    unit_amount: String
                  ).returns(T.attached_class)
                end
                def self.new(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig
              )
            end
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class TieredConfig < Orb::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Inclusive tier starting value
                sig { returns(Float) }
                attr_accessor :first_unit

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Exclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig do
                  params(
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(first_unit:, unit_amount:, last_unit: nil)
                end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
            end
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_bps_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  Orb::Util::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Per-event basis point rate
                sig { returns(Float) }
                attr_accessor :bps

                # Inclusive tier starting value
                sig { returns(String) }
                attr_accessor :minimum_amount

                # Exclusive tier ending value
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # Per unit maximum to charge
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        bps: Float,
                        minimum_amount: String,
                        maximum_amount: T.nilable(String),
                        per_unit_maximum: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
            end
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Basis points to rate on
                sig { returns(Float) }
                attr_accessor :bps

                # Upper bound for tier
                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                # The maximum amount to charge for any one event
                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String))
                    .returns(T.attached_class)
                end
                def self.new(bps:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  Orb::Util::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier,
                    Orb::Util::AnyHash
                  )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
                def self.new(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :threshold_total_amount
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_percent
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package_with_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::OrSymbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_with_proration_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_unit_pricing_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :scalable_matrix_with_tiered_pricing_config

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :cumulative_grouped_bulk_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              cumulative_grouped_bulk_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::OrSymbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :max_group_tiered_package_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              max_group_tiered_package_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::OrSymbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_metered_minimum_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_with_metered_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :matrix_with_display_name_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              item_id:,
              matrix_with_display_name_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::OrSymbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_package_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            #   in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Util::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              grouped_tiered_package_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::OrSymbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                  )
                end

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:)
              end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash
              end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                    )
                  end

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values
                end
              end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice]
              )
          end
          def self.variants
          end
        end
      end
    end
  end
end
