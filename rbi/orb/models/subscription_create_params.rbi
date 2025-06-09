# typed: strong

module Orb
  module Models
    class SubscriptionCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionCreateParams, Orb::Internal::AnyHash)
        end

      # Additional adjustments to be added to the subscription. (Only available for
      # accounts that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(T::Array[Orb::SubscriptionCreateParams::AddAdjustment])
        )
      end
      attr_accessor :add_adjustments

      # Additional prices to be added to the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig do
        returns(T.nilable(T::Array[Orb::SubscriptionCreateParams::AddPrice]))
      end
      attr_accessor :add_prices

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :align_billing_with_subscription_start_date

      sig do
        params(align_billing_with_subscription_start_date: T::Boolean).void
      end
      attr_writer :align_billing_with_subscription_start_date

      # Determines whether issued invoices for this subscription will automatically be
      # charged with the saved payment method on the due date. If not specified, this
      # defaults to the behavior configured for this customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(String)) }
      attr_accessor :aws_region

      sig { returns(T.nilable(Orb::BillingCycleAnchorConfiguration)) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration:
            T.nilable(Orb::BillingCycleAnchorConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_anchor_configuration

      # Redemption code to be used for this subscription. If the coupon cannot be found
      # by its redemption code, or cannot be redeemed, an error response will be
      # returned and the subscription creation or plan change will not be scheduled.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig { returns(T.nilable(Float)) }
      attr_accessor :credits_overage_rate

      # The currency to use for the subscription. If not specified, the invoicing
      # currency for the plan will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

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

      sig do
        returns(
          T.nilable(
            Orb::SubscriptionCreateParams::ExternalMarketplace::OrSymbol
          )
        )
      end
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

      # The name to use for the subscription. If not specified, the plan name will be
      # used.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

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
      sig do
        returns(
          T.nilable(T::Array[Orb::SubscriptionCreateParams::RemoveAdjustment])
        )
      end
      attr_accessor :remove_adjustments

      # Plan prices to be removed from the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig do
        returns(T.nilable(T::Array[Orb::SubscriptionCreateParams::RemovePrice]))
      end
      attr_accessor :remove_prices

      # Plan adjustments to be replaced with additional adjustments on the subscription.
      # (Only available for accounts that have migrated off of legacy subscription
      # overrides)
      sig do
        returns(
          T.nilable(T::Array[Orb::SubscriptionCreateParams::ReplaceAdjustment])
        )
      end
      attr_accessor :replace_adjustments

      # Plan prices to be replaced with additional prices on the subscription. (Only
      # available for accounts that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(T::Array[Orb::SubscriptionCreateParams::ReplacePrice])
        )
      end
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
          add_adjustments:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::AddAdjustment::OrHash]
            ),
          add_prices:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::AddPrice::OrHash]
            ),
          align_billing_with_subscription_start_date: T::Boolean,
          auto_collection: T.nilable(T::Boolean),
          aws_region: T.nilable(String),
          billing_cycle_anchor_configuration:
            T.nilable(Orb::BillingCycleAnchorConfiguration::OrHash),
          coupon_redemption_code: T.nilable(String),
          credits_overage_rate: T.nilable(Float),
          currency: T.nilable(String),
          customer_id: T.nilable(String),
          default_invoice_memo: T.nilable(String),
          end_date: T.nilable(Time),
          external_customer_id: T.nilable(String),
          external_marketplace:
            T.nilable(
              Orb::SubscriptionCreateParams::ExternalMarketplace::OrSymbol
            ),
          external_marketplace_reporting_id: T.nilable(String),
          external_plan_id: T.nilable(String),
          filter: T.nilable(String),
          initial_phase_order: T.nilable(Integer),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          net_terms: T.nilable(Integer),
          per_credit_overage_amount: T.nilable(Float),
          plan_id: T.nilable(String),
          plan_version_number: T.nilable(Integer),
          price_overrides: T.nilable(T::Array[T.anything]),
          remove_adjustments:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::RemoveAdjustment::OrHash]
            ),
          remove_prices:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::RemovePrice::OrHash]
            ),
          replace_adjustments:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::ReplaceAdjustment::OrHash]
            ),
          replace_prices:
            T.nilable(
              T::Array[Orb::SubscriptionCreateParams::ReplacePrice::OrHash]
            ),
          start_date: T.nilable(Time),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
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
        # The currency to use for the subscription. If not specified, the invoicing
        # currency for the plan will be used.
        currency: nil,
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
        # The name to use for the subscription. If not specified, the plan name will be
        # used.
        name: nil,
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
      )
      end

      sig do
        override.returns(
          {
            add_adjustments:
              T.nilable(T::Array[Orb::SubscriptionCreateParams::AddAdjustment]),
            add_prices:
              T.nilable(T::Array[Orb::SubscriptionCreateParams::AddPrice]),
            align_billing_with_subscription_start_date: T::Boolean,
            auto_collection: T.nilable(T::Boolean),
            aws_region: T.nilable(String),
            billing_cycle_anchor_configuration:
              T.nilable(Orb::BillingCycleAnchorConfiguration),
            coupon_redemption_code: T.nilable(String),
            credits_overage_rate: T.nilable(Float),
            currency: T.nilable(String),
            customer_id: T.nilable(String),
            default_invoice_memo: T.nilable(String),
            end_date: T.nilable(Time),
            external_customer_id: T.nilable(String),
            external_marketplace:
              T.nilable(
                Orb::SubscriptionCreateParams::ExternalMarketplace::OrSymbol
              ),
            external_marketplace_reporting_id: T.nilable(String),
            external_plan_id: T.nilable(String),
            filter: T.nilable(String),
            initial_phase_order: T.nilable(Integer),
            invoicing_threshold: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            name: T.nilable(String),
            net_terms: T.nilable(Integer),
            per_credit_overage_amount: T.nilable(Float),
            plan_id: T.nilable(String),
            plan_version_number: T.nilable(Integer),
            price_overrides: T.nilable(T::Array[T.anything]),
            remove_adjustments:
              T.nilable(
                T::Array[Orb::SubscriptionCreateParams::RemoveAdjustment]
              ),
            remove_prices:
              T.nilable(T::Array[Orb::SubscriptionCreateParams::RemovePrice]),
            replace_adjustments:
              T.nilable(
                T::Array[Orb::SubscriptionCreateParams::ReplaceAdjustment]
              ),
            replace_prices:
              T.nilable(T::Array[Orb::SubscriptionCreateParams::ReplacePrice]),
            start_date: T.nilable(Time),
            trial_duration_days: T.nilable(Integer),
            usage_customer_ids: T.nilable(T::Array[String]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::AddAdjustment,
              Orb::Internal::AnyHash
            )
          end

        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::NewPercentageDiscount,
              Orb::NewUsageDiscount,
              Orb::NewAmountDiscount,
              Orb::NewMinimum,
              Orb::NewMaximum
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
            adjustment:
              T.any(
                Orb::NewPercentageDiscount::OrHash,
                Orb::NewUsageDiscount::OrHash,
                Orb::NewAmountDiscount::OrHash,
                Orb::NewMinimum::OrHash,
                Orb::NewMaximum::OrHash
              ),
            end_date: T.nilable(Time),
            plan_phase_order: T.nilable(Integer),
            start_date: T.nilable(Time)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              adjustment:
                T.any(
                  Orb::NewPercentageDiscount,
                  Orb::NewUsageDiscount,
                  Orb::NewAmountDiscount,
                  Orb::NewMinimum,
                  Orb::NewMaximum
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
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewPercentageDiscount,
                Orb::NewUsageDiscount,
                Orb::NewAmountDiscount,
                Orb::NewMinimum,
                Orb::NewMaximum
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionCreateParams::AddAdjustment::Adjustment::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::AddPrice,
              Orb::Internal::AnyHash
            )
          end

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::NewAllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash)
          ).void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
        # price.
        sig { returns(T.nilable(T::Array[Orb::DiscountOverride])) }
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
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionTieredBPSPrice,
                Orb::NewSubscriptionBPSPrice,
                Orb::NewSubscriptionBulkBPSPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionTierWithProrationPrice,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice
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
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash),
            discounts: T.nilable(T::Array[Orb::DiscountOverride::OrHash]),
            end_date: T.nilable(Time),
            external_price_id: T.nilable(String),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            plan_phase_order: T.nilable(Integer),
            price:
              T.nilable(
                T.any(
                  Orb::NewSubscriptionUnitPrice::OrHash,
                  Orb::NewSubscriptionPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixPrice::OrHash,
                  Orb::NewSubscriptionTieredPrice::OrHash,
                  Orb::NewSubscriptionTieredBPSPrice::OrHash,
                  Orb::NewSubscriptionBPSPrice::OrHash,
                  Orb::NewSubscriptionBulkBPSPrice::OrHash,
                  Orb::NewSubscriptionBulkPrice::OrHash,
                  Orb::NewSubscriptionThresholdTotalAmountPrice::OrHash,
                  Orb::NewSubscriptionTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionTieredWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionUnitWithPercentPrice::OrHash,
                  Orb::NewSubscriptionPackageWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionTierWithProrationPrice::OrHash,
                  Orb::NewSubscriptionUnitWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedAllocationPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewSubscriptionBulkWithProrationPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewSubscriptionCumulativeGroupedBulkPrice::OrHash,
                  Orb::NewSubscriptionMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::NewSubscriptionMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPrice::OrHash
                )
              ),
            price_id: T.nilable(String),
            start_date: T.nilable(Time)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              allocation_price: T.nilable(Orb::NewAllocationPrice),
              discounts: T.nilable(T::Array[Orb::DiscountOverride]),
              end_date: T.nilable(Time),
              external_price_id: T.nilable(String),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              plan_phase_order: T.nilable(Integer),
              price:
                T.nilable(
                  T.any(
                    Orb::NewSubscriptionUnitPrice,
                    Orb::NewSubscriptionPackagePrice,
                    Orb::NewSubscriptionMatrixPrice,
                    Orb::NewSubscriptionTieredPrice,
                    Orb::NewSubscriptionTieredBPSPrice,
                    Orb::NewSubscriptionBPSPrice,
                    Orb::NewSubscriptionBulkBPSPrice,
                    Orb::NewSubscriptionBulkPrice,
                    Orb::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::NewSubscriptionTieredPackagePrice,
                    Orb::NewSubscriptionTieredWithMinimumPrice,
                    Orb::NewSubscriptionUnitWithPercentPrice,
                    Orb::NewSubscriptionPackageWithAllocationPrice,
                    Orb::NewSubscriptionTierWithProrationPrice,
                    Orb::NewSubscriptionUnitWithProrationPrice,
                    Orb::NewSubscriptionGroupedAllocationPrice,
                    Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::NewSubscriptionBulkWithProrationPrice,
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::NewSubscriptionGroupedTieredPackagePrice,
                    Orb::NewSubscriptionMatrixWithAllocationPrice,
                    Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                    Orb::NewSubscriptionGroupedTieredPrice
                  )
                ),
              price_id: T.nilable(String),
              start_date: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionTieredBPSPrice,
                Orb::NewSubscriptionBPSPrice,
                Orb::NewSubscriptionBulkBPSPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionTierWithProrationPrice,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice
              )
            end

          sig do
            override.returns(
              T::Array[Orb::SubscriptionCreateParams::AddPrice::Price::Variants]
            )
          end
          def self.variants
          end
        end
      end

      module ExternalMarketplace
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionCreateParams::ExternalMarketplace)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE =
          T.let(
            :google,
            Orb::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol
          )
        AWS =
          T.let(
            :aws,
            Orb::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Orb::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionCreateParams::ExternalMarketplace::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class RemoveAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::RemoveAdjustment,
              Orb::Internal::AnyHash
            )
          end

        # The id of the adjustment to remove on the subscription.
        sig { returns(String) }
        attr_accessor :adjustment_id

        sig { params(adjustment_id: String).returns(T.attached_class) }
        def self.new(
          # The id of the adjustment to remove on the subscription.
          adjustment_id:
        )
        end

        sig { override.returns({ adjustment_id: String }) }
        def to_hash
        end
      end

      class RemovePrice < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::RemovePrice,
              Orb::Internal::AnyHash
            )
          end

        # The external price id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # The id of the price to remove on the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            external_price_id: T.nilable(String),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The external price id of the price to remove on the subscription.
          external_price_id: nil,
          # The id of the price to remove on the subscription.
          price_id: nil
        )
        end

        sig do
          override.returns(
            {
              external_price_id: T.nilable(String),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class ReplaceAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::ReplaceAdjustment,
              Orb::Internal::AnyHash
            )
          end

        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::NewPercentageDiscount,
              Orb::NewUsageDiscount,
              Orb::NewAmountDiscount,
              Orb::NewMinimum,
              Orb::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        # The id of the adjustment on the plan to replace in the subscription.
        sig { returns(String) }
        attr_accessor :replaces_adjustment_id

        sig do
          params(
            adjustment:
              T.any(
                Orb::NewPercentageDiscount::OrHash,
                Orb::NewUsageDiscount::OrHash,
                Orb::NewAmountDiscount::OrHash,
                Orb::NewMinimum::OrHash,
                Orb::NewMaximum::OrHash
              ),
            replaces_adjustment_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The definition of a new adjustment to create and add to the subscription.
          adjustment:,
          # The id of the adjustment on the plan to replace in the subscription.
          replaces_adjustment_id:
        )
        end

        sig do
          override.returns(
            {
              adjustment:
                T.any(
                  Orb::NewPercentageDiscount,
                  Orb::NewUsageDiscount,
                  Orb::NewAmountDiscount,
                  Orb::NewMinimum,
                  Orb::NewMaximum
                ),
              replaces_adjustment_id: String
            }
          )
        end
        def to_hash
        end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewPercentageDiscount,
                Orb::NewUsageDiscount,
                Orb::NewAmountDiscount,
                Orb::NewMinimum,
                Orb::NewMaximum
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class ReplacePrice < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionCreateParams::ReplacePrice,
              Orb::Internal::AnyHash
            )
          end

        # The id of the price on the plan to replace in the subscription.
        sig { returns(String) }
        attr_accessor :replaces_price_id

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::NewAllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash)
          ).void
        end
        attr_writer :allocation_price

        # [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
        # replacement price.
        sig { returns(T.nilable(T::Array[Orb::DiscountOverride])) }
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
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionTieredBPSPrice,
                Orb::NewSubscriptionBPSPrice,
                Orb::NewSubscriptionBulkBPSPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionTierWithProrationPrice,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice
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
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash),
            discounts: T.nilable(T::Array[Orb::DiscountOverride::OrHash]),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            price:
              T.nilable(
                T.any(
                  Orb::NewSubscriptionUnitPrice::OrHash,
                  Orb::NewSubscriptionPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixPrice::OrHash,
                  Orb::NewSubscriptionTieredPrice::OrHash,
                  Orb::NewSubscriptionTieredBPSPrice::OrHash,
                  Orb::NewSubscriptionBPSPrice::OrHash,
                  Orb::NewSubscriptionBulkBPSPrice::OrHash,
                  Orb::NewSubscriptionBulkPrice::OrHash,
                  Orb::NewSubscriptionThresholdTotalAmountPrice::OrHash,
                  Orb::NewSubscriptionTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionTieredWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionUnitWithPercentPrice::OrHash,
                  Orb::NewSubscriptionPackageWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionTierWithProrationPrice::OrHash,
                  Orb::NewSubscriptionUnitWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedAllocationPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewSubscriptionBulkWithProrationPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewSubscriptionCumulativeGroupedBulkPrice::OrHash,
                  Orb::NewSubscriptionMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::NewSubscriptionMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPrice::OrHash
                )
              ),
            price_id: T.nilable(String)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              replaces_price_id: String,
              allocation_price: T.nilable(Orb::NewAllocationPrice),
              discounts: T.nilable(T::Array[Orb::DiscountOverride]),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              price:
                T.nilable(
                  T.any(
                    Orb::NewSubscriptionUnitPrice,
                    Orb::NewSubscriptionPackagePrice,
                    Orb::NewSubscriptionMatrixPrice,
                    Orb::NewSubscriptionTieredPrice,
                    Orb::NewSubscriptionTieredBPSPrice,
                    Orb::NewSubscriptionBPSPrice,
                    Orb::NewSubscriptionBulkBPSPrice,
                    Orb::NewSubscriptionBulkPrice,
                    Orb::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::NewSubscriptionTieredPackagePrice,
                    Orb::NewSubscriptionTieredWithMinimumPrice,
                    Orb::NewSubscriptionUnitWithPercentPrice,
                    Orb::NewSubscriptionPackageWithAllocationPrice,
                    Orb::NewSubscriptionTierWithProrationPrice,
                    Orb::NewSubscriptionUnitWithProrationPrice,
                    Orb::NewSubscriptionGroupedAllocationPrice,
                    Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::NewSubscriptionBulkWithProrationPrice,
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::NewSubscriptionGroupedTieredPackagePrice,
                    Orb::NewSubscriptionMatrixWithAllocationPrice,
                    Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                    Orb::NewSubscriptionGroupedTieredPrice
                  )
                ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionTieredBPSPrice,
                Orb::NewSubscriptionBPSPrice,
                Orb::NewSubscriptionBulkBPSPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionTierWithProrationPrice,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionCreateParams::ReplacePrice::Price::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
