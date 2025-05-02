# typed: strong

module Orb
  module Models
    class SubscriptionCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # Additional adjustments to be added to the subscription. (Only available for
      # accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment])) }
      attr_accessor :add_adjustments

      # Additional prices to be added to the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice])) }
      attr_accessor :add_prices

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :align_billing_with_subscription_start_date

      sig { params(align_billing_with_subscription_start_date: T::Boolean).void }
      attr_writer :align_billing_with_subscription_start_date

      # Determines whether issued invoices for this subscription will automatically be
      # charged with the saved payment method on the due date. If not specified, this
      # defaults to the behavior configured for this customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(String)) }
      attr_accessor :aws_region

      sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration)) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration: T.nilable(
            T.any(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, Orb::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :billing_cycle_anchor_configuration

      # Redemption code to be used for this subscription. If the coupon cannot be found
      # by its redemption code, or cannot be redeemed, an error response will be
      # returned and the subscription creation or plan change will not be scheduled.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig { returns(T.nilable(Float)) }
      attr_accessor :credits_overage_rate

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Determines the default memo on this subscription's invoices. Note that if this
      # is not provided, it is determined by the plan configuration.
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
      # to. Note that either this property or `plan_id` must be specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # An additional filter to apply to usage queries. This filter must be expressed as
      # a boolean
      # [computed property](/extensibility/advanced-metrics#computed-properties). If
      # null, usage queries will not include any additional filter.
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # The phase of the plan to start with
      sig { returns(T.nilable(Integer)) }
      attr_accessor :initial_phase_order

      # When this subscription's accrued usage reaches this threshold, an invoice will
      # be issued for the subscription. If not specified, invoices will only be issued
      # at the end of the billing period.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The net terms determines the difference between the invoice date and the issue
      # date for the invoice. If you intend the invoice to be due on issue, set this
      # to 0. If not provided, this defaults to the value specified in the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(Float)) }
      attr_accessor :per_credit_overage_amount

      # The plan that the given subscription should be switched to. Note that either
      # this property or `external_plan_id` must be specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # Specifies which version of the plan to subscribe to. If null, the default
      # version will be used.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_version_number

      # Optionally provide a list of overrides for prices on the plan
      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :price_overrides

      # Plan adjustments to be removed from the subscription. (Only available for
      # accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment])) }
      attr_accessor :remove_adjustments

      # Plan prices to be removed from the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice])) }
      attr_accessor :remove_prices

      # Plan adjustments to be replaced with additional adjustments on the subscription.
      # (Only available for accounts that have migrated off of legacy subscription
      # overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment])) }
      attr_accessor :replace_adjustments

      # Plan prices to be replaced with additional prices on the subscription. (Only
      # available for accounts that have migrated off of legacy subscription overrides)
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice])) }
      attr_accessor :replace_prices

      sig { returns(T.nilable(Time)) }
      attr_accessor :start_date

      # The duration of the trial period in days. If not provided, this defaults to the
      # value specified in the plan. If `0` is provided, the trial on the plan will be
      # skipped.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_duration_days

      # A list of customer IDs whose usage events will be aggregated and billed under
      # this subscription. By default, a subscription only considers usage events
      # associated with its attached customer's customer_id. When usage_customer_ids is
      # provided, the subscription includes usage events from the specified customers
      # only. Provided usage_customer_ids must be either the customer for this
      # subscription itself, or any of that customer's children.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      sig do
        params(
          add_adjustments: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddAdjustment, Orb::Internal::AnyHash)]),
          add_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddPrice, Orb::Internal::AnyHash)]),
          align_billing_with_subscription_start_date: T::Boolean,
          auto_collection: T.nilable(T::Boolean),
          aws_region: T.nilable(String),
          billing_cycle_anchor_configuration: T.nilable(
            T.any(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, Orb::Internal::AnyHash)
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
          remove_adjustments: T.nilable(
            T::Array[T.any(Orb::Models::SubscriptionCreateParams::RemoveAdjustment, Orb::Internal::AnyHash)]
          ),
          remove_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::RemovePrice, Orb::Internal::AnyHash)]),
          replace_adjustments: T.nilable(
            T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplaceAdjustment, Orb::Internal::AnyHash)]
          ),
          replace_prices: T.nilable(T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice, Orb::Internal::AnyHash)]),
          start_date: T.nilable(Time),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Additional adjustments to be added to the subscription. (Only available for
        # accounts that have migrated off of legacy subscription overrides)
        add_adjustments: nil,
        # Additional prices to be added to the subscription. (Only available for accounts
        # that have migrated off of legacy subscription overrides)
        add_prices: nil,
        align_billing_with_subscription_start_date: nil,
        # Determines whether issued invoices for this subscription will automatically be
        # charged with the saved payment method on the due date. If not specified, this
        # defaults to the behavior configured for this customer.
        auto_collection: nil,
        aws_region: nil,
        billing_cycle_anchor_configuration: nil,
        # Redemption code to be used for this subscription. If the coupon cannot be found
        # by its redemption code, or cannot be redeemed, an error response will be
        # returned and the subscription creation or plan change will not be scheduled.
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        customer_id: nil,
        # Determines the default memo on this subscription's invoices. Note that if this
        # is not provided, it is determined by the plan configuration.
        default_invoice_memo: nil,
        end_date: nil,
        external_customer_id: nil,
        external_marketplace: nil,
        external_marketplace_reporting_id: nil,
        # The external_plan_id of the plan that the given subscription should be switched
        # to. Note that either this property or `plan_id` must be specified.
        external_plan_id: nil,
        # An additional filter to apply to usage queries. This filter must be expressed as
        # a boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties). If
        # null, usage queries will not include any additional filter.
        filter: nil,
        # The phase of the plan to start with
        initial_phase_order: nil,
        # When this subscription's accrued usage reaches this threshold, an invoice will
        # be issued for the subscription. If not specified, invoices will only be issued
        # at the end of the billing period.
        invoicing_threshold: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The net terms determines the difference between the invoice date and the issue
        # date for the invoice. If you intend the invoice to be due on issue, set this
        # to 0. If not provided, this defaults to the value specified in the plan.
        net_terms: nil,
        per_credit_overage_amount: nil,
        # The plan that the given subscription should be switched to. Note that either
        # this property or `external_plan_id` must be specified.
        plan_id: nil,
        # Specifies which version of the plan to subscribe to. If null, the default
        # version will be used.
        plan_version_number: nil,
        # Optionally provide a list of overrides for prices on the plan
        price_overrides: nil,
        # Plan adjustments to be removed from the subscription. (Only available for
        # accounts that have migrated off of legacy subscription overrides)
        remove_adjustments: nil,
        # Plan prices to be removed from the subscription. (Only available for accounts
        # that have migrated off of legacy subscription overrides)
        remove_prices: nil,
        # Plan adjustments to be replaced with additional adjustments on the subscription.
        # (Only available for accounts that have migrated off of legacy subscription
        # overrides)
        replace_adjustments: nil,
        # Plan prices to be replaced with additional prices on the subscription. (Only
        # available for accounts that have migrated off of legacy subscription overrides)
        replace_prices: nil,
        start_date: nil,
        # The duration of the trial period in days. If not provided, this defaults to the
        # value specified in the plan. If `0` is provided, the trial on the plan will be
        # skipped.
        trial_duration_days: nil,
        # A list of customer IDs whose usage events will be aggregated and billed under
        # this subscription. By default, a subscription only considers usage events
        # associated with its attached customer's customer_id. When usage_customer_ids is
        # provided, the subscription includes usage events from the specified customers
        # only. Provided usage_customer_ids must be either the customer for this
        # subscription itself, or any of that customer's children.
        usage_customer_ids: nil,
        request_options: {}
      ); end
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
      def to_hash; end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::PercentageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Maximum
            )
          )
        end
        attr_accessor :adjustment

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The phase to add this adjustment to.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. If null, the adjustment will
        # start when the phase or subscription starts.
        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Maximum
            ),
            end_date: T.nilable(Time),
            plan_phase_order: T.nilable(Integer),
            start_date: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The definition of a new adjustment to create and add to the subscription.
          adjustment:,
          # The end date of the adjustment interval. This is the date that the adjustment
          # will stop affecting prices on the subscription.
          end_date: nil,
          # The phase to add this adjustment to.
          plan_phase_order: nil,
          # The start date of the adjustment interval. This is the date that the adjustment
          # will start affecting prices on the subscription. If null, the adjustment will
          # start when the phase or subscription starts.
          start_date: nil
        ); end
        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::PercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::UsageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::AmountDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Minimum,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Maximum
                ),
                end_date: T.nilable(Time),
                plan_phase_order: T.nilable(Integer),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash; end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Internal::Type::Union

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              percentage_discount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            ); end
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
            def to_hash; end
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              usage_discount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            ); end
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
            def to_hash; end
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              amount_discount:,
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            ); end
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
            def to_hash; end
          end

          class Minimum < Orb::Internal::Type::BaseModel
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
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              # The item ID that revenue from this minimum will be attributed to.
              item_id:,
              minimum_amount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :minimum
            ); end
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
            def to_hash; end
          end

          class Maximum < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              maximum_amount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :maximum
            ); end
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
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::Maximum]
              )
          end
          def self.variants; end
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        # price.
        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount])) }
        attr_accessor :discounts

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription. If null, billing will end when the phase or
        # subscription ends.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        # this price.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        # this price.
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
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage
              )
            )
          )
        end
        attr_accessor :price

        # The id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription. If null, billing will start when the phase or
        # subscription starts.
        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            allocation_price: T.nilable(T.any(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice, Orb::Internal::AnyHash)),
            discounts: T.nilable(
              T::Array[T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Discount, Orb::Internal::AnyHash)]
            ),
            end_date: T.nilable(Time),
            external_price_id: T.nilable(String),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            plan_phase_order: T.nilable(Integer),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit,
                Orb::Internal::AnyHash,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage
              )
            ),
            price_id: T.nilable(String),
            start_date: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The definition of a new allocation price to create and add to the subscription.
          allocation_price: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
          # price.
          discounts: nil,
          # The end date of the price interval. This is the date that the price will stop
          # billing on the subscription. If null, billing will end when the phase or
          # subscription ends.
          end_date: nil,
          # The external price id of the price to add to the subscription.
          external_price_id: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
          # this price.
          maximum_amount: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
          # this price.
          minimum_amount: nil,
          # The phase to add this price to.
          plan_phase_order: nil,
          # The definition of a new price to create and add to the subscription.
          price: nil,
          # The id of the price to add to the subscription.
          price_id: nil,
          # The start date of the price interval. This is the date that the price will start
          # billing on the subscription. If null, billing will start when the phase or
          # subscription starts.
          start_date: nil
        ); end
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
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage
                  )
                ),
                price_id: T.nilable(String),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash; end

        class AllocationPrice < Orb::Internal::Type::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          attr_accessor :amount

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence::OrSymbol) }
          attr_accessor :cadence

          # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          # this price.
          sig { returns(String) }
          attr_accessor :currency

          # Whether the allocated amount should expire at the end of the cadence or roll
          # over to the next period.
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
          def self.new(
            # An amount of the currency to allocate to the customer at the specified cadence.
            amount:,
            # The cadence at which to allocate the amount to the customer.
            cadence:,
            # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
            # this price.
            currency:,
            # Whether the allocated amount should expire at the end of the cadence or roll
            # over to the next period.
            expires_at_end_of_cadence:
          ); end
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
          def to_hash; end

          # The cadence at which to allocate the amount to the customer.
          module Cadence
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice::Cadence) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

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
            def self.values; end
          end
        end

        class Discount < Orb::Internal::Type::BaseModel
          sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType::OrSymbol) }
          attr_accessor :discount_type

          # Only available if discount_type is `amount`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          # Only available if discount_type is `percentage`. This is a number between 0
          # and 1.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          # Only available if discount_type is `usage`. Number of usage units that this
          # discount is for
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
          def self.new(
            discount_type:,
            # Only available if discount_type is `amount`.
            amount_discount: nil,
            # Only available if discount_type is `percentage`. This is a number between 0
            # and 1.
            percentage_discount: nil,
            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for
            usage_discount: nil
          ); end
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
          def to_hash; end

          module DiscountType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Discount::DiscountType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

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
            def self.values; end
          end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          class Unit < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::UnitConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :unit_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::UnitConfig, Orb::Internal::AnyHash),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class UnitConfig < Orb::Internal::Type::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(
                # Rate per unit of usage
                unit_amount:
              ); end
              sig { override.returns({unit_amount: String}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::PackageConfig) }
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::PackageConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :package_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::PackageConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              package_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class PackageConfig < Orb::Internal::Type::BaseModel
              # A currency amount to rate usage by
              sig { returns(String) }
              attr_accessor :package_amount

              # An integer amount to represent package size. For example, 1000 here would divide
              # usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
              def self.new(
                # A currency amount to rate usage by
                package_amount:,
                # An integer amount to represent package size. For example, 1000 here would divide
                # usage by 1000 before multiplying by package_amount in rating
                package_size:
              ); end
              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::OrSymbol,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              matrix_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :matrix
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::OrSymbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class MatrixConfig < Orb::Internal::Type::BaseModel
              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Default per unit rate for any usage not bucketed into a specified matrix_value
                default_unit_amount:,
                # One or two event property values to evaluate matrix groups by
                dimensions:,
                # Matrix values for specified matrix grouping keys
                matrix_values:
              ); end
              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue]
                    }
                  )
              end
              def to_hash; end

              class MatrixValue < Orb::Internal::Type::BaseModel
                # One or two matrix keys to filter usage to this Matrix value by. For example,
                # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                # instance tier.
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
                def self.new(
                  # One or two matrix keys to filter usage to this Matrix value by. For example,
                  # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                  # instance tier.
                  dimension_values:,
                  # Unit price for the specified dimension_values
                  unit_amount:
                ); end
                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig) }
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class TieredConfig < Orb::Internal::Type::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig { returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for rating based on total usage quantities into the specified tier
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::TieredConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Exclusive tier starting value
                sig { returns(Float) }
                attr_accessor :first_unit

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Inclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig do
                  params(
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Exclusive tier starting value
                  first_unit:,
                  # Amount per unit
                  unit_amount:,
                  # Inclusive tier ending value. If null, this is treated as the last tier
                  last_unit: nil
                ); end
                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig) }
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_bps_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_bps_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_bps
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              # tiers
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
                # tiers
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Per-event basis point rate
                sig { returns(Float) }
                attr_accessor :bps

                # Exclusive tier starting value
                sig { returns(String) }
                attr_accessor :minimum_amount

                # Inclusive tier ending value
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
                def self.new(
                  # Per-event basis point rate
                  bps:,
                  # Exclusive tier starting value
                  minimum_amount:,
                  # Inclusive tier ending value
                  maximum_amount: nil,
                  # Per unit maximum to charge
                  per_unit_maximum: nil
                ); end
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
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BpsConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BpsConfig, Orb::Internal::AnyHash),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bps
            ); end
            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BpsConfig < Orb::Internal::Type::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                # Basis point take rate per event
                bps:,
                # Optional currency amount maximum to cap spend per event
                per_unit_maximum: nil
              ); end
              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash; end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig) }
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk_bps
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              # tier based on total volume
              sig { returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
                # tier based on total volume
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
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
                def self.new(
                  # Basis points to rate on
                  bps:,
                  # Upper bound for tier
                  maximum_amount: nil,
                  # The maximum amount to charge for any one event
                  per_unit_maximum: nil
                ); end
                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: T.any(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig, Orb::Internal::AnyHash),
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BulkConfig < Orb::Internal::Type::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig { returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Bulk tiers for rating based on total usage volume
                tiers:
              ); end
              sig do
                override
                  .returns({tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BulkConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
                def self.new(
                  # Amount per unit
                  unit_amount:,
                  # Upper bound for this tier
                  maximum_units: nil
                ); end
                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash; end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              threshold_total_amount_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :threshold_total_amount
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_package_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_with_minimum_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_with_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_with_percent_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit_with_percent
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              package_with_allocation_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :package_with_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_with_proration_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_with_proration_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::OrSymbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_allocation_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::OrSymbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_with_prorated_minimum_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              scalable_matrix_with_unit_pricing_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :scalable_matrix_with_unit_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              cumulative_grouped_bulk_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :cumulative_grouped_bulk
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              max_group_tiered_package_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :max_group_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_with_metered_minimum_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_with_metered_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              matrix_with_display_name_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :matrix_with_display_name
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::OrSymbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_tiered_package_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::OrSymbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::AddPrice::Price::Unit, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Package, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Matrix, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Tiered, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredBps, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bps, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkBps, Orb::Models::SubscriptionCreateParams::AddPrice::Price::Bulk, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ThresholdTotalAmount, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredPackage, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithMinimum, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithPercent, Orb::Models::SubscriptionCreateParams::AddPrice::Price::PackageWithAllocation, Orb::Models::SubscriptionCreateParams::AddPrice::Price::TieredWithProration, Orb::Models::SubscriptionCreateParams::AddPrice::Price::UnitWithProration, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedAllocation, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionCreateParams::AddPrice::Price::BulkWithProration, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionCreateParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionCreateParams::AddPrice::Price::CumulativeGroupedBulk, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionCreateParams::AddPrice::Price::MatrixWithDisplayName, Orb::Models::SubscriptionCreateParams::AddPrice::Price::GroupedTieredPackage]
              )
          end
          def self.variants; end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::Internal::Type::BaseModel
        # The day of the month on which the billing cycle is anchored. If the maximum
        # number of days in a month is greater than this value, the last day of the month
        # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        # period begins on the 30th.
        sig { returns(Integer) }
        attr_accessor :day

        # The month on which the billing cycle is anchored (e.g. a quarterly price
        # anchored in February would have cycles starting February, May, August, and
        # November).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        # anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig do
          params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).returns(T.attached_class)
        end
        def self.new(
          # The day of the month on which the billing cycle is anchored. If the maximum
          # number of days in a month is greater than this value, the last day of the month
          # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
          # period begins on the 30th.
          day:,
          # The month on which the billing cycle is anchored (e.g. a quarterly price
          # anchored in February would have cycles starting February, May, August, and
          # November).
          month: nil,
          # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
          # anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
          year: nil
        ); end
        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash; end
      end

      module ExternalMarketplace
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE = T.let(:google, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)
        AWS = T.let(:aws, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)
        AZURE = T.let(:azure, Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol]) }
        def self.values; end
      end

      class RemoveAdjustment < Orb::Internal::Type::BaseModel
        # The id of the adjustment to remove on the subscription.
        sig { returns(String) }
        attr_accessor :adjustment_id

        sig { params(adjustment_id: String).returns(T.attached_class) }
        def self.new(
          # The id of the adjustment to remove on the subscription.
          adjustment_id:
        ); end
        sig { override.returns({adjustment_id: String}) }
        def to_hash; end
      end

      class RemovePrice < Orb::Internal::Type::BaseModel
        # The external price id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(external_price_id: T.nilable(String), price_id: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(
          # The external price id of the price to remove on the subscription.
          external_price_id: nil,
          # The id of the price to remove on the subscription.
          price_id: nil
        ); end
        sig { override.returns({external_price_id: T.nilable(String), price_id: T.nilable(String)}) }
        def to_hash; end
      end

      class ReplaceAdjustment < Orb::Internal::Type::BaseModel
        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::PercentageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Maximum
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
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Maximum
            ),
            replaces_adjustment_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The definition of a new adjustment to create and add to the subscription.
          adjustment:,
          # The id of the adjustment on the plan to replace in the subscription.
          replaces_adjustment_id:
        ); end
        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::PercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::UsageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::AmountDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Minimum,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Maximum
                ),
                replaces_adjustment_id: String
              }
            )
        end
        def to_hash; end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Internal::Type::Union

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              percentage_discount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            ); end
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
            def to_hash; end
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              usage_discount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            ); end
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
            def to_hash; end
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              amount_discount:,
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            ); end
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
            def to_hash; end
          end

          class Minimum < Orb::Internal::Type::BaseModel
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
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              # The item ID that revenue from this minimum will be attributed to.
              item_id:,
              minimum_amount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :minimum
            ); end
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
            def to_hash; end
          end

          class Maximum < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            # When false, this adjustment will be applied to a single price. Otherwise, it
            # will be applied at the invoice level, possibly to multiple prices.
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
            def self.new(
              # The set of price IDs to which this adjustment applies.
              applies_to_price_ids:,
              maximum_amount:,
              # When false, this adjustment will be applied to a single price. Otherwise, it
              # will be applied at the invoice level, possibly to multiple prices.
              is_invoice_level: nil,
              adjustment_type: :maximum
            ); end
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
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Maximum]
              )
          end
          def self.variants; end
        end
      end

      class ReplacePrice < Orb::Internal::Type::BaseModel
        # The id of the price on the plan to replace in the subscription.
        sig { returns(String) }
        attr_accessor :replaces_price_id

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(
              T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        # replacement price.
        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount])) }
        attr_accessor :discounts

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The new quantity of the price, if the price is a fixed price.
        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
        # the replacement price.
        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
        # the replacement price.
        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The definition of a new price to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage
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
            allocation_price: T.nilable(
              T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice, Orb::Internal::AnyHash)
            ),
            discounts: T.nilable(
              T::Array[T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount, Orb::Internal::AnyHash)]
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit,
                Orb::Internal::AnyHash,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage
              )
            ),
            price_id: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The id of the price on the plan to replace in the subscription.
          replaces_price_id:,
          # The definition of a new allocation price to create and add to the subscription.
          allocation_price: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
          # replacement price.
          discounts: nil,
          # The external price id of the price to add to the subscription.
          external_price_id: nil,
          # The new quantity of the price, if the price is a fixed price.
          fixed_price_quantity: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
          # the replacement price.
          maximum_amount: nil,
          # [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
          # the replacement price.
          minimum_amount: nil,
          # The definition of a new price to create and add to the subscription.
          price: nil,
          # The id of the price to add to the subscription.
          price_id: nil
        ); end
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
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage
                  )
                ),
                price_id: T.nilable(String)
              }
            )
        end
        def to_hash; end

        class AllocationPrice < Orb::Internal::Type::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          attr_accessor :amount

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence::OrSymbol) }
          attr_accessor :cadence

          # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          # this price.
          sig { returns(String) }
          attr_accessor :currency

          # Whether the allocated amount should expire at the end of the cadence or roll
          # over to the next period.
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
          def self.new(
            # An amount of the currency to allocate to the customer at the specified cadence.
            amount:,
            # The cadence at which to allocate the amount to the customer.
            cadence:,
            # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
            # this price.
            currency:,
            # Whether the allocated amount should expire at the end of the cadence or roll
            # over to the next period.
            expires_at_end_of_cadence:
          ); end
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
          def to_hash; end

          # The cadence at which to allocate the amount to the customer.
          module Cadence
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice::Cadence) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

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
            def self.values; end
          end
        end

        class Discount < Orb::Internal::Type::BaseModel
          sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType::OrSymbol) }
          attr_accessor :discount_type

          # Only available if discount_type is `amount`.
          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          # Only available if discount_type is `percentage`. This is a number between 0
          # and 1.
          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          # Only available if discount_type is `usage`. Number of usage units that this
          # discount is for
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
          def self.new(
            discount_type:,
            # Only available if discount_type is `amount`.
            amount_discount: nil,
            # Only available if discount_type is `percentage`. This is a number between 0
            # and 1.
            percentage_discount: nil,
            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for
            usage_discount: nil
          ); end
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
          def to_hash; end

          module DiscountType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount::DiscountType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

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
            def self.values; end
          end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          class Unit < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::UnitConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :unit_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::UnitConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class UnitConfig < Orb::Internal::Type::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(
                # Rate per unit of usage
                unit_amount:
              ); end
              sig { override.returns({unit_amount: String}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::PackageConfig) }
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::PackageConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :package_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::PackageConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              package_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class PackageConfig < Orb::Internal::Type::BaseModel
              # A currency amount to rate usage by
              sig { returns(String) }
              attr_accessor :package_amount

              # An integer amount to represent package size. For example, 1000 here would divide
              # usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
              def self.new(
                # A currency amount to rate usage by
                package_amount:,
                # An integer amount to represent package size. For example, 1000 here would divide
                # usage by 1000 before multiplying by package_amount in rating
                package_size:
              ); end
              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::OrSymbol,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              matrix_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :matrix
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::OrSymbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class MatrixConfig < Orb::Internal::Type::BaseModel
              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Default per unit rate for any usage not bucketed into a specified matrix_value
                default_unit_amount:,
                # One or two event property values to evaluate matrix groups by
                dimensions:,
                # Matrix values for specified matrix grouping keys
                matrix_values:
              ); end
              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue]
                    }
                  )
              end
              def to_hash; end

              class MatrixValue < Orb::Internal::Type::BaseModel
                # One or two matrix keys to filter usage to this Matrix value by. For example,
                # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                # instance tier.
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
                def self.new(
                  # One or two matrix keys to filter usage to this Matrix value by. For example,
                  # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                  # instance tier.
                  dimension_values:,
                  # Unit price for the specified dimension_values
                  unit_amount:
                ); end
                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig) }
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredConfig < Orb::Internal::Type::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig { returns(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for rating based on total usage quantities into the specified tier
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::TieredConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Exclusive tier starting value
                sig { returns(Float) }
                attr_accessor :first_unit

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Inclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig do
                  params(
                    first_unit: Float,
                    unit_amount: String,
                    last_unit: T.nilable(Float)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Exclusive tier starting value
                  first_unit:,
                  # Amount per unit
                  unit_amount:,
                  # Inclusive tier ending value. If null, this is treated as the last tier
                  last_unit: nil
                ); end
                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::OrSymbol) }
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig) }
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :tiered_bps_config

            # The id of the billable metric for the price. Only needed if the price is
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_bps_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_bps
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              # tiers
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
                # tiers
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier]
                    }
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Per-event basis point rate
                sig { returns(Float) }
                attr_accessor :bps

                # Exclusive tier starting value
                sig { returns(String) }
                attr_accessor :minimum_amount

                # Inclusive tier ending value
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
                def self.new(
                  # Per-event basis point rate
                  bps:,
                  # Exclusive tier starting value
                  minimum_amount:,
                  # Inclusive tier ending value
                  maximum_amount: nil,
                  # Per unit maximum to charge
                  per_unit_maximum: nil
                ); end
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
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BpsConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: T.any(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BpsConfig, Orb::Internal::AnyHash),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bps
            ); end
            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BpsConfig < Orb::Internal::Type::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                # Basis point take rate per event
                bps:,
                # Optional currency amount maximum to cap spend per event
                per_unit_maximum: nil
              ); end
              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash; end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig) }
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk_bps
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              # tier based on total volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
                # tier based on total volume
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
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
                def self.new(
                  # Basis points to rate on
                  bps:,
                  # Upper bound for tier
                  maximum_amount: nil,
                  # The maximum amount to charge for any one event
                  per_unit_maximum: nil
                ); end
                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig,
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            class BulkConfig < Orb::Internal::Type::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig { returns(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Bulk tiers for rating based on total usage volume
                tiers:
              ); end
              sig do
                override
                  .returns(
                    {tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BulkConfig::Tier]}
                  )
              end
              def to_hash; end

              class Tier < Orb::Internal::Type::BaseModel
                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
                def self.new(
                  # Amount per unit
                  unit_amount:,
                  # Upper bound for this tier
                  maximum_units: nil
                ); end
                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash; end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::Cadence::TaggedSymbol])
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              threshold_total_amount_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :threshold_total_amount
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_package_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_with_minimum_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_with_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_with_percent_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit_with_percent
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::OrSymbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              package_with_allocation_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :package_with_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              tiered_with_proration_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :tiered_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              unit_with_proration_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :unit_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::OrSymbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_allocation_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::OrSymbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_with_prorated_minimum_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::OrSymbol) }
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
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
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :bulk_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              scalable_matrix_with_unit_pricing_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :scalable_matrix_with_unit_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              cumulative_grouped_bulk_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :cumulative_grouped_bulk
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              max_group_tiered_package_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :max_group_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_with_metered_minimum_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_with_metered_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              matrix_with_display_name_config:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :matrix_with_display_name
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::OrSymbol
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
            # usage-based.
            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            # If the Price represents a fixed cost, the price will be billed in-advance if
            # this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            # For custom cadence: specifies the duration of the billing period in days or
            # months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
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
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            # If the Price represents a fixed cost, this represents the quantity of units
            # applied.
            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            # If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :invoicing_cycle_configuration

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            # A transient ID that can be used to reference this price when adding adjustments
            # in the same API call.
            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::OrSymbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              grouped_tiered_package_config:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # The id of the billable metric for the price. Only needed if the price is
              # usage-based.
              billable_metric_id: nil,
              # If the Price represents a fixed cost, the price will be billed in-advance if
              # this is true, and in-arrears if this is false.
              billed_in_advance: nil,
              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              billing_cycle_configuration: nil,
              # The per unit conversion rate of the price currency to the invoicing currency.
              conversion_rate: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # An alias for the price.
              external_price_id: nil,
              # If the Price represents a fixed cost, this represents the quantity of units
              # applied.
              fixed_price_quantity: nil,
              # The property used to group this price on an invoice
              invoice_grouping_key: nil,
              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              invoicing_cycle_configuration: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # A transient ID that can be used to reference this price when adding adjustments
              # in the same API call.
              reference_id: nil,
              model_type: :grouped_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::OrSymbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              attr_accessor :duration

              # The unit of billing period duration.
              sig do
                returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # The duration of the billing period.
                duration:,
                # The unit of billing period duration.
                duration_unit:
              ); end
              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Unit, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Package, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Matrix, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Tiered, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredBps, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bps, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkBps, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::Bulk, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredPackage, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithMinimum, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithPercent, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::PackageWithAllocation, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::TieredWithProration, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::UnitWithProration, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedAllocation, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::BulkWithProration, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::GroupedTieredPackage]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
