# typed: strong

module Orb
  module Models
    class SubscriptionSchedulePlanChangeParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Orb::SubscriptionSchedulePlanChangeParams,
            Orb::Internal::AnyHash
          )
        end

      sig do
        returns(
          Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::OrSymbol
        )
      end
      attr_accessor :change_option

      # Additional adjustments to be added to the subscription. (Only available for
      # accounts that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment]
          )
        )
      end
      attr_accessor :add_adjustments

      # Additional prices to be added to the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionSchedulePlanChangeParams::AddPrice]
          )
        )
      end
      attr_accessor :add_prices

      # [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be
      # aligned with the plan change's effective date.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :align_billing_with_plan_change_date

      # Determines whether issued invoices for this subscription will automatically be
      # charged with the saved payment method on the due date. If not specified, this
      # defaults to the behavior configured for this customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      # Reset billing periods to be aligned with the plan change's effective date or
      # start of the month. Defaults to `unchanged` which keeps subscription's existing
      # billing cycle alignment.
      sig do
        returns(
          T.nilable(
            Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::OrSymbol
          )
        )
      end
      attr_accessor :billing_cycle_alignment

      sig { returns(T.nilable(Orb::BillingCycleAnchorConfiguration)) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration:
            T.nilable(Orb::BillingCycleAnchorConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_anchor_configuration

      # The date that the plan change should take effect. This parameter can only be
      # passed if the `change_option` is `requested_date`. If a date with no time is
      # passed, the plan change will happen at midnight in the customer's timezone.
      sig { returns(T.nilable(Time)) }
      attr_accessor :change_date

      # Redemption code to be used for this subscription. If the coupon cannot be found
      # by its redemption code, or cannot be redeemed, an error response will be
      # returned and the subscription creation or plan change will not be scheduled.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig { returns(T.nilable(Float)) }
      attr_accessor :credits_overage_rate

      # Determines the default memo on this subscription's invoices. Note that if this
      # is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

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

      # Specifies which version of the plan to change to. If null, the default version
      # will be used.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_version_number

      # Optionally provide a list of overrides for prices on the plan
      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :price_overrides

      # Plan adjustments to be removed from the subscription. (Only available for
      # accounts that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(
            T::Array[
              Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment
            ]
          )
        )
      end
      attr_accessor :remove_adjustments

      # Plan prices to be removed from the subscription. (Only available for accounts
      # that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionSchedulePlanChangeParams::RemovePrice]
          )
        )
      end
      attr_accessor :remove_prices

      # Plan adjustments to be replaced with additional adjustments on the subscription.
      # (Only available for accounts that have migrated off of legacy subscription
      # overrides)
      sig do
        returns(
          T.nilable(
            T::Array[
              Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment
            ]
          )
        )
      end
      attr_accessor :replace_adjustments

      # Plan prices to be replaced with additional prices on the subscription. (Only
      # available for accounts that have migrated off of legacy subscription overrides)
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice]
          )
        )
      end
      attr_accessor :replace_prices

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
          change_option:
            Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::OrSymbol,
          add_adjustments:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::OrHash
              ]
            ),
          add_prices:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::OrHash
              ]
            ),
          align_billing_with_plan_change_date: T.nilable(T::Boolean),
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_alignment:
            T.nilable(
              Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::OrSymbol
            ),
          billing_cycle_anchor_configuration:
            T.nilable(Orb::BillingCycleAnchorConfiguration::OrHash),
          change_date: T.nilable(Time),
          coupon_redemption_code: T.nilable(String),
          credits_overage_rate: T.nilable(Float),
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          filter: T.nilable(String),
          initial_phase_order: T.nilable(Integer),
          invoicing_threshold: T.nilable(String),
          net_terms: T.nilable(Integer),
          per_credit_overage_amount: T.nilable(Float),
          plan_id: T.nilable(String),
          plan_version_number: T.nilable(Integer),
          price_overrides: T.nilable(T::Array[T.anything]),
          remove_adjustments:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment::OrHash
              ]
            ),
          remove_prices:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::RemovePrice::OrHash
              ]
            ),
          replace_adjustments:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::OrHash
              ]
            ),
          replace_prices:
            T.nilable(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::OrHash
              ]
            ),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        change_option:,
        # Additional adjustments to be added to the subscription. (Only available for
        # accounts that have migrated off of legacy subscription overrides)
        add_adjustments: nil,
        # Additional prices to be added to the subscription. (Only available for accounts
        # that have migrated off of legacy subscription overrides)
        add_prices: nil,
        # [DEPRECATED] Use billing_cycle_alignment instead. Reset billing periods to be
        # aligned with the plan change's effective date.
        align_billing_with_plan_change_date: nil,
        # Determines whether issued invoices for this subscription will automatically be
        # charged with the saved payment method on the due date. If not specified, this
        # defaults to the behavior configured for this customer.
        auto_collection: nil,
        # Reset billing periods to be aligned with the plan change's effective date or
        # start of the month. Defaults to `unchanged` which keeps subscription's existing
        # billing cycle alignment.
        billing_cycle_alignment: nil,
        billing_cycle_anchor_configuration: nil,
        # The date that the plan change should take effect. This parameter can only be
        # passed if the `change_option` is `requested_date`. If a date with no time is
        # passed, the plan change will happen at midnight in the customer's timezone.
        change_date: nil,
        # Redemption code to be used for this subscription. If the coupon cannot be found
        # by its redemption code, or cannot be redeemed, an error response will be
        # returned and the subscription creation or plan change will not be scheduled.
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        # Determines the default memo on this subscription's invoices. Note that if this
        # is not provided, it is determined by the plan configuration.
        default_invoice_memo: nil,
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
        # The net terms determines the difference between the invoice date and the issue
        # date for the invoice. If you intend the invoice to be due on issue, set this
        # to 0. If not provided, this defaults to the value specified in the plan.
        net_terms: nil,
        per_credit_overage_amount: nil,
        # The plan that the given subscription should be switched to. Note that either
        # this property or `external_plan_id` must be specified.
        plan_id: nil,
        # Specifies which version of the plan to change to. If null, the default version
        # will be used.
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
            change_option:
              Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::OrSymbol,
            add_adjustments:
              T.nilable(
                T::Array[
                  Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment
                ]
              ),
            add_prices:
              T.nilable(
                T::Array[Orb::SubscriptionSchedulePlanChangeParams::AddPrice]
              ),
            align_billing_with_plan_change_date: T.nilable(T::Boolean),
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_alignment:
              T.nilable(
                Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::OrSymbol
              ),
            billing_cycle_anchor_configuration:
              T.nilable(Orb::BillingCycleAnchorConfiguration),
            change_date: T.nilable(Time),
            coupon_redemption_code: T.nilable(String),
            credits_overage_rate: T.nilable(Float),
            default_invoice_memo: T.nilable(String),
            external_plan_id: T.nilable(String),
            filter: T.nilable(String),
            initial_phase_order: T.nilable(Integer),
            invoicing_threshold: T.nilable(String),
            net_terms: T.nilable(Integer),
            per_credit_overage_amount: T.nilable(Float),
            plan_id: T.nilable(String),
            plan_version_number: T.nilable(Integer),
            price_overrides: T.nilable(T::Array[T.anything]),
            remove_adjustments:
              T.nilable(
                T::Array[
                  Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment
                ]
              ),
            remove_prices:
              T.nilable(
                T::Array[Orb::SubscriptionSchedulePlanChangeParams::RemovePrice]
              ),
            replace_adjustments:
              T.nilable(
                T::Array[
                  Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment
                ]
              ),
            replace_prices:
              T.nilable(
                T::Array[
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice
                ]
              ),
            trial_duration_days: T.nilable(Integer),
            usage_customer_ids: T.nilable(T::Array[String]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ChangeOption
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::SubscriptionSchedulePlanChangeParams::ChangeOption
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUESTED_DATE =
          T.let(
            :requested_date,
            Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::TaggedSymbol
          )
        END_OF_SUBSCRIPTION_TERM =
          T.let(
            :end_of_subscription_term,
            Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::TaggedSymbol
          )
        IMMEDIATE =
          T.let(
            :immediate,
            Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionSchedulePlanChangeParams::ChangeOption::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment,
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
                Orb::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::Variants
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
              Orb::SubscriptionSchedulePlanChangeParams::AddPrice,
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

        # New subscription price request body params.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum,
                Orb::NewSubscriptionMinimumCompositePrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput
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
                  Orb::NewSubscriptionTieredPrice::OrHash,
                  Orb::NewSubscriptionBulkPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::OrHash,
                  Orb::NewSubscriptionPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixPrice::OrHash,
                  Orb::NewSubscriptionThresholdTotalAmountPrice::OrHash,
                  Orb::NewSubscriptionTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionTieredWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPrice::OrHash,
                  Orb::NewSubscriptionTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionPackageWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionUnitWithPercentPrice::OrHash,
                  Orb::NewSubscriptionMatrixWithAllocationPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::OrHash,
                  Orb::NewSubscriptionUnitWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedAllocationPrice::OrHash,
                  Orb::NewSubscriptionBulkWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::NewSubscriptionMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewSubscriptionCumulativeGroupedBulkPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::OrHash,
                  Orb::NewSubscriptionMinimumCompositePrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::OrHash
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
          # New subscription price request body params.
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
                    Orb::NewSubscriptionTieredPrice,
                    Orb::NewSubscriptionBulkPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters,
                    Orb::NewSubscriptionPackagePrice,
                    Orb::NewSubscriptionMatrixPrice,
                    Orb::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::NewSubscriptionTieredPackagePrice,
                    Orb::NewSubscriptionTieredWithMinimumPrice,
                    Orb::NewSubscriptionGroupedTieredPrice,
                    Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                    Orb::NewSubscriptionPackageWithAllocationPrice,
                    Orb::NewSubscriptionUnitWithPercentPrice,
                    Orb::NewSubscriptionMatrixWithAllocationPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration,
                    Orb::NewSubscriptionUnitWithProrationPrice,
                    Orb::NewSubscriptionGroupedAllocationPrice,
                    Orb::NewSubscriptionBulkWithProrationPrice,
                    Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                    Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::NewSubscriptionGroupedTieredPackagePrice,
                    Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum,
                    Orb::NewSubscriptionMinimumCompositePrice,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput
                  )
                ),
              price_id: T.nilable(String),
              start_date: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        # New subscription price request body params.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum,
                Orb::NewSubscriptionMinimumCompositePrice,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent,
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput
              )
            end

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters,
                  Orb::Internal::AnyHash
                )
              end

            # Configuration for bulk_with_filters pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig
              )
            end
            attr_reader :bulk_with_filters_config

            sig do
              params(
                bulk_with_filters_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash
              ).void
            end
            attr_writer :bulk_with_filters_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                bulk_with_filters_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash,
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Configuration for bulk_with_filters pricing
              bulk_with_filters_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :bulk_with_filters
            )
            end

            sig do
              override.returns(
                {
                  bulk_with_filters_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig,
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Property filters to apply (all must match)
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                  ]
                )
              end
              attr_accessor :filters

              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              # Configuration for bulk_with_filters pricing
              sig do
                params(
                  filters:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter::OrHash
                    ],
                  tiers:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Property filters to apply (all must match)
                filters:,
                # Bulk tiers for rating based on total usage volume
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    filters:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                      ],
                    tiers:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # Event property key to filter on
                sig { returns(String) }
                attr_accessor :property_key

                # Event property value to match
                sig { returns(String) }
                attr_accessor :property_value

                # Configuration for a single property filter
                sig do
                  params(property_key: String, property_value: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Event property key to filter on
                  property_key:,
                  # Event property value to match
                  property_value:
                )
                end

                sig do
                  override.returns(
                    { property_key: String, property_value: String }
                  )
                end
                def to_hash
                end
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # The lower bound for this tier
                sig { returns(T.nilable(String)) }
                attr_accessor :tier_lower_bound

                # Configuration for a single bulk pricing tier
                sig do
                  params(
                    unit_amount: String,
                    tier_lower_bound: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Amount per unit
                  unit_amount:,
                  # The lower bound for this tier
                  tier_lower_bound: nil
                )
                end

                sig do
                  override.returns(
                    { unit_amount: String, tier_lower_bound: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # Configuration for tiered_with_proration pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig
              )
            end
            attr_reader :tiered_with_proration_config

            sig do
              params(
                tiered_with_proration_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash
              ).void
            end
            attr_writer :tiered_with_proration_config

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # Configuration for tiered_with_proration pricing
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :tiered_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Tiers for rating based on total usage quantities into the specified tier with
              # proration
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              # Configuration for tiered_with_proration pricing
              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Tiers for rating based on total usage quantities into the specified tier with
                # proration
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Inclusive tier starting value
                sig { returns(String) }
                attr_accessor :tier_lower_bound

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Configuration for a single tiered with proration tier
                sig do
                  params(tier_lower_bound: String, unit_amount: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Inclusive tier starting value
                  tier_lower_bound:,
                  # Amount per unit
                  unit_amount:
                )
                end

                sig do
                  override.returns(
                    { tier_lower_bound: String, unit_amount: String }
                  )
                end
                def to_hash
                end
              end
            end
          end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for grouped_with_min_max_thresholds pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
              )
            end
            attr_reader :grouped_with_min_max_thresholds_config

            sig do
              params(
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
              ).void
            end
            attr_writer :grouped_with_min_max_thresholds_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for grouped_with_min_max_thresholds pricing
              grouped_with_min_max_thresholds_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The event property used to group before applying thresholds
              sig { returns(String) }
              attr_accessor :grouping_key

              # The maximum amount to charge each group
              sig { returns(String) }
              attr_accessor :maximum_charge

              # The minimum amount to charge each group, regardless of usage
              sig { returns(String) }
              attr_accessor :minimum_charge

              # The base price charged per group
              sig { returns(String) }
              attr_accessor :per_unit_rate

              # Configuration for grouped_with_min_max_thresholds pricing
              sig do
                params(
                  grouping_key: String,
                  maximum_charge: String,
                  minimum_charge: String,
                  per_unit_rate: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The event property used to group before applying thresholds
                grouping_key:,
                # The maximum amount to charge each group
                maximum_charge:,
                # The minimum amount to charge each group, regardless of usage
                minimum_charge:,
                # The base price charged per group
                per_unit_rate:
              )
              end

              sig do
                override.returns(
                  {
                    grouping_key: String,
                    maximum_charge: String,
                    minimum_charge: String,
                    per_unit_rate: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for cumulative_grouped_allocation pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig
              )
            end
            attr_reader :cumulative_grouped_allocation_config

            sig do
              params(
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash
              ).void
            end
            attr_writer :cumulative_grouped_allocation_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for cumulative_grouped_allocation pricing
              cumulative_grouped_allocation_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :cumulative_grouped_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                  cumulative_grouped_allocation_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The overall allocation across all groups
              sig { returns(String) }
              attr_accessor :cumulative_allocation

              # The allocation per individual group
              sig { returns(String) }
              attr_accessor :group_allocation

              # The event property used to group usage before applying allocations
              sig { returns(String) }
              attr_accessor :grouping_key

              # The amount to charge for each unit outside of the allocation
              sig { returns(String) }
              attr_accessor :unit_amount

              # Configuration for cumulative_grouped_allocation pricing
              sig do
                params(
                  cumulative_allocation: String,
                  group_allocation: String,
                  grouping_key: String,
                  unit_amount: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The overall allocation across all groups
                cumulative_allocation:,
                # The allocation per individual group
                group_allocation:,
                # The event property used to group usage before applying allocations
                grouping_key:,
                # The amount to charge for each unit outside of the allocation
                unit_amount:
              )
              end

              sig do
                override.returns(
                  {
                    cumulative_allocation: String,
                    group_allocation: String,
                    grouping_key: String,
                    unit_amount: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Minimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # Configuration for minimum pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::MinimumConfig
              )
            end
            attr_reader :minimum_config

            sig do
              params(
                minimum_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::MinimumConfig::OrHash
              ).void
            end
            attr_writer :minimum_config

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::OrSymbol,
                item_id: String,
                minimum_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::MinimumConfig::OrHash,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # Configuration for minimum pricing
              minimum_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::OrSymbol,
                  item_id: String,
                  minimum_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::MinimumConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MinimumConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Minimum::MinimumConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The minimum amount to apply
              sig { returns(String) }
              attr_accessor :minimum_amount

              # If true, subtotals from this price are prorated based on the service period
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :prorated

              sig { params(prorated: T::Boolean).void }
              attr_writer :prorated

              # Configuration for minimum pricing
              sig do
                params(minimum_amount: String, prorated: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The minimum amount to apply
                minimum_amount:,
                # If true, subtotals from this price are prorated based on the service period
                prorated: nil
              )
              end

              sig do
                override.returns(
                  { minimum_amount: String, prorated: T::Boolean }
                )
              end
              def to_hash
              end
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # Configuration for percent pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::PercentConfig
              )
            end
            attr_reader :percent_config

            sig do
              params(
                percent_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::PercentConfig::OrHash
              ).void
            end
            attr_writer :percent_config

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::OrSymbol,
                item_id: String,
                name: String,
                percent_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::PercentConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # Configuration for percent pricing
              percent_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :percent
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  percent_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::PercentConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class PercentConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Percent::PercentConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # What percent of the component subtotals to charge
              sig { returns(Float) }
              attr_accessor :percent

              # Configuration for percent pricing
              sig { params(percent: Float).returns(T.attached_class) }
              def self.new(
                # What percent of the component subtotals to charge
                percent:
              )
              end

              sig { override.returns({ percent: Float }) }
              def to_hash
              end
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for event_output pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::EventOutputConfig
              )
            end
            attr_reader :event_output_config

            sig do
              params(
                event_output_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::EventOutputConfig::OrHash
              ).void
            end
            attr_writer :event_output_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::OrSymbol,
                event_output_config:
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::EventOutputConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for event_output pricing
              event_output_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :event_output
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::OrSymbol,
                  event_output_config:
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::EventOutputConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class EventOutputConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::EventOutput::EventOutputConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The key in the event data to extract the unit rate from.
              sig { returns(String) }
              attr_accessor :unit_rating_key

              # If provided, this amount will be used as the unit rate when an event does not
              # have a value for the `unit_rating_key`. If not provided, events missing a unit
              # rate will be ignored.
              sig { returns(T.nilable(String)) }
              attr_accessor :default_unit_rate

              # An optional key in the event data to group by (e.g., event ID). All events will
              # also be grouped by their unit rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :grouping_key

              # Configuration for event_output pricing
              sig do
                params(
                  unit_rating_key: String,
                  default_unit_rate: T.nilable(String),
                  grouping_key: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The key in the event data to extract the unit rate from.
                unit_rating_key:,
                # If provided, this amount will be used as the unit rate when an event does not
                # have a value for the `unit_rating_key`. If not provided, events missing a unit
                # rate will be ignored.
                default_unit_rate: nil,
                # An optional key in the event data to group by (e.g., event ID). All events will
                # also be grouped by their unit rate.
                grouping_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    unit_rating_key: String,
                    default_unit_rate: T.nilable(String),
                    grouping_key: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::AddPrice::Price::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      # Reset billing periods to be aligned with the plan change's effective date or
      # start of the month. Defaults to `unchanged` which keeps subscription's existing
      # billing cycle alignment.
      module BillingCycleAlignment
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNCHANGED =
          T.let(
            :unchanged,
            Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::TaggedSymbol
          )
        PLAN_CHANGE_DATE =
          T.let(
            :plan_change_date,
            Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::TaggedSymbol
          )
        START_OF_MONTH =
          T.let(
            :start_of_month,
            Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment::TaggedSymbol
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
              Orb::SubscriptionSchedulePlanChangeParams::RemoveAdjustment,
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
              Orb::SubscriptionSchedulePlanChangeParams::RemovePrice,
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
              Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment,
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
                Orb::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::Variants
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
              Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice,
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

        # New subscription price request body params.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum,
                Orb::NewSubscriptionMinimumCompositePrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput
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
                  Orb::NewSubscriptionTieredPrice::OrHash,
                  Orb::NewSubscriptionBulkPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::OrHash,
                  Orb::NewSubscriptionPackagePrice::OrHash,
                  Orb::NewSubscriptionMatrixPrice::OrHash,
                  Orb::NewSubscriptionThresholdTotalAmountPrice::OrHash,
                  Orb::NewSubscriptionTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionTieredWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPrice::OrHash,
                  Orb::NewSubscriptionTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewSubscriptionPackageWithAllocationPrice::OrHash,
                  Orb::NewSubscriptionUnitWithPercentPrice::OrHash,
                  Orb::NewSubscriptionMatrixWithAllocationPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::OrHash,
                  Orb::NewSubscriptionUnitWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedAllocationPrice::OrHash,
                  Orb::NewSubscriptionBulkWithProrationPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewSubscriptionGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::NewSubscriptionMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewSubscriptionGroupedTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewSubscriptionCumulativeGroupedBulkPrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::OrHash,
                  Orb::NewSubscriptionMinimumCompositePrice::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::OrHash,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::OrHash
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
          # New subscription price request body params.
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
                    Orb::NewSubscriptionTieredPrice,
                    Orb::NewSubscriptionBulkPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters,
                    Orb::NewSubscriptionPackagePrice,
                    Orb::NewSubscriptionMatrixPrice,
                    Orb::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::NewSubscriptionTieredPackagePrice,
                    Orb::NewSubscriptionTieredWithMinimumPrice,
                    Orb::NewSubscriptionGroupedTieredPrice,
                    Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                    Orb::NewSubscriptionPackageWithAllocationPrice,
                    Orb::NewSubscriptionUnitWithPercentPrice,
                    Orb::NewSubscriptionMatrixWithAllocationPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration,
                    Orb::NewSubscriptionUnitWithProrationPrice,
                    Orb::NewSubscriptionGroupedAllocationPrice,
                    Orb::NewSubscriptionBulkWithProrationPrice,
                    Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                    Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::NewSubscriptionGroupedTieredPackagePrice,
                    Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum,
                    Orb::NewSubscriptionMinimumCompositePrice,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput
                  )
                ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # New subscription price request body params.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewSubscriptionUnitPrice,
                Orb::NewSubscriptionTieredPrice,
                Orb::NewSubscriptionBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters,
                Orb::NewSubscriptionPackagePrice,
                Orb::NewSubscriptionMatrixPrice,
                Orb::NewSubscriptionThresholdTotalAmountPrice,
                Orb::NewSubscriptionTieredPackagePrice,
                Orb::NewSubscriptionTieredWithMinimumPrice,
                Orb::NewSubscriptionGroupedTieredPrice,
                Orb::NewSubscriptionTieredPackageWithMinimumPrice,
                Orb::NewSubscriptionPackageWithAllocationPrice,
                Orb::NewSubscriptionUnitWithPercentPrice,
                Orb::NewSubscriptionMatrixWithAllocationPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration,
                Orb::NewSubscriptionUnitWithProrationPrice,
                Orb::NewSubscriptionGroupedAllocationPrice,
                Orb::NewSubscriptionBulkWithProrationPrice,
                Orb::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::NewSubscriptionGroupedTieredPackagePrice,
                Orb::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum,
                Orb::NewSubscriptionMinimumCompositePrice,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent,
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput
              )
            end

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters,
                  Orb::Internal::AnyHash
                )
              end

            # Configuration for bulk_with_filters pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig
              )
            end
            attr_reader :bulk_with_filters_config

            sig do
              params(
                bulk_with_filters_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash
              ).void
            end
            attr_writer :bulk_with_filters_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                bulk_with_filters_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash,
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::OrSymbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Configuration for bulk_with_filters pricing
              bulk_with_filters_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :bulk_with_filters
            )
            end

            sig do
              override.returns(
                {
                  bulk_with_filters_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig,
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Property filters to apply (all must match)
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                  ]
                )
              end
              attr_accessor :filters

              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              # Configuration for bulk_with_filters pricing
              sig do
                params(
                  filters:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter::OrHash
                    ],
                  tiers:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Property filters to apply (all must match)
                filters:,
                # Bulk tiers for rating based on total usage volume
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    filters:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                      ],
                    tiers:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # Event property key to filter on
                sig { returns(String) }
                attr_accessor :property_key

                # Event property value to match
                sig { returns(String) }
                attr_accessor :property_value

                # Configuration for a single property filter
                sig do
                  params(property_key: String, property_value: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Event property key to filter on
                  property_key:,
                  # Event property value to match
                  property_value:
                )
                end

                sig do
                  override.returns(
                    { property_key: String, property_value: String }
                  )
                end
                def to_hash
                end
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::BulkWithFiltersConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # The lower bound for this tier
                sig { returns(T.nilable(String)) }
                attr_accessor :tier_lower_bound

                # Configuration for a single bulk pricing tier
                sig do
                  params(
                    unit_amount: String,
                    tier_lower_bound: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Amount per unit
                  unit_amount:,
                  # The lower bound for this tier
                  tier_lower_bound: nil
                )
                end

                sig do
                  override.returns(
                    { unit_amount: String, tier_lower_bound: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::BulkWithFilters::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # Configuration for tiered_with_proration pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig
              )
            end
            attr_reader :tiered_with_proration_config

            sig do
              params(
                tiered_with_proration_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash
              ).void
            end
            attr_writer :tiered_with_proration_config

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                item_id: String,
                name: String,
                tiered_with_proration_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # Configuration for tiered_with_proration pricing
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :tiered_with_proration
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Tiers for rating based on total usage quantities into the specified tier with
              # proration
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              # Configuration for tiered_with_proration pricing
              sig do
                params(
                  tiers:
                    T::Array[
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Tiers for rating based on total usage quantities into the specified tier with
                # proration
                tiers:
              )
              end

              sig do
                override.returns(
                  {
                    tiers:
                      T::Array[
                        Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                      ]
                  }
                )
              end
              def to_hash
              end

              class Tier < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  end

                # Inclusive tier starting value
                sig { returns(String) }
                attr_accessor :tier_lower_bound

                # Amount per unit
                sig { returns(String) }
                attr_accessor :unit_amount

                # Configuration for a single tiered with proration tier
                sig do
                  params(tier_lower_bound: String, unit_amount: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Inclusive tier starting value
                  tier_lower_bound:,
                  # Amount per unit
                  unit_amount:
                )
                end

                sig do
                  override.returns(
                    { tier_lower_bound: String, unit_amount: String }
                  )
                end
                def to_hash
                end
              end
            end
          end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for grouped_with_min_max_thresholds pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
              )
            end
            attr_reader :grouped_with_min_max_thresholds_config

            sig do
              params(
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
              ).void
            end
            attr_writer :grouped_with_min_max_thresholds_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for grouped_with_min_max_thresholds pricing
              grouped_with_min_max_thresholds_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The event property used to group before applying thresholds
              sig { returns(String) }
              attr_accessor :grouping_key

              # The maximum amount to charge each group
              sig { returns(String) }
              attr_accessor :maximum_charge

              # The minimum amount to charge each group, regardless of usage
              sig { returns(String) }
              attr_accessor :minimum_charge

              # The base price charged per group
              sig { returns(String) }
              attr_accessor :per_unit_rate

              # Configuration for grouped_with_min_max_thresholds pricing
              sig do
                params(
                  grouping_key: String,
                  maximum_charge: String,
                  minimum_charge: String,
                  per_unit_rate: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The event property used to group before applying thresholds
                grouping_key:,
                # The maximum amount to charge each group
                maximum_charge:,
                # The minimum amount to charge each group, regardless of usage
                minimum_charge:,
                # The base price charged per group
                per_unit_rate:
              )
              end

              sig do
                override.returns(
                  {
                    grouping_key: String,
                    maximum_charge: String,
                    minimum_charge: String,
                    per_unit_rate: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for cumulative_grouped_allocation pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig
              )
            end
            attr_reader :cumulative_grouped_allocation_config

            sig do
              params(
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash
              ).void
            end
            attr_writer :cumulative_grouped_allocation_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for cumulative_grouped_allocation pricing
              cumulative_grouped_allocation_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :cumulative_grouped_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                  cumulative_grouped_allocation_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The overall allocation across all groups
              sig { returns(String) }
              attr_accessor :cumulative_allocation

              # The allocation per individual group
              sig { returns(String) }
              attr_accessor :group_allocation

              # The event property used to group usage before applying allocations
              sig { returns(String) }
              attr_accessor :grouping_key

              # The amount to charge for each unit outside of the allocation
              sig { returns(String) }
              attr_accessor :unit_amount

              # Configuration for cumulative_grouped_allocation pricing
              sig do
                params(
                  cumulative_allocation: String,
                  group_allocation: String,
                  grouping_key: String,
                  unit_amount: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The overall allocation across all groups
                cumulative_allocation:,
                # The allocation per individual group
                group_allocation:,
                # The event property used to group usage before applying allocations
                grouping_key:,
                # The amount to charge for each unit outside of the allocation
                unit_amount:
              )
              end

              sig do
                override.returns(
                  {
                    cumulative_allocation: String,
                    group_allocation: String,
                    grouping_key: String,
                    unit_amount: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Minimum < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # Configuration for minimum pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::MinimumConfig
              )
            end
            attr_reader :minimum_config

            sig do
              params(
                minimum_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::MinimumConfig::OrHash
              ).void
            end
            attr_writer :minimum_config

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::OrSymbol,
                item_id: String,
                minimum_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::MinimumConfig::OrHash,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # Configuration for minimum pricing
              minimum_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::OrSymbol,
                  item_id: String,
                  minimum_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::MinimumConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MinimumConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Minimum::MinimumConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The minimum amount to apply
              sig { returns(String) }
              attr_accessor :minimum_amount

              # If true, subtotals from this price are prorated based on the service period
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :prorated

              sig { params(prorated: T::Boolean).void }
              attr_writer :prorated

              # Configuration for minimum pricing
              sig do
                params(minimum_amount: String, prorated: T::Boolean).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The minimum amount to apply
                minimum_amount:,
                # If true, subtotals from this price are prorated based on the service period
                prorated: nil
              )
              end

              sig do
                override.returns(
                  { minimum_amount: String, prorated: T::Boolean }
                )
              end
              def to_hash
              end
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            # Configuration for percent pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::PercentConfig
              )
            end
            attr_reader :percent_config

            sig do
              params(
                percent_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::PercentConfig::OrHash
              ).void
            end
            attr_writer :percent_config

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::OrSymbol,
                item_id: String,
                name: String,
                percent_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::PercentConfig::OrHash,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # The id of the item the price will be associated with.
              item_id:,
              # The name of the price.
              name:,
              # Configuration for percent pricing
              percent_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :percent
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::OrSymbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  percent_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::PercentConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class PercentConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Percent::PercentConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # What percent of the component subtotals to charge
              sig { returns(Float) }
              attr_accessor :percent

              # Configuration for percent pricing
              sig { params(percent: Float).returns(T.attached_class) }
              def self.new(
                # What percent of the component subtotals to charge
                percent:
              )
              end

              sig { override.returns({ percent: Float }) }
              def to_hash
              end
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for event_output pricing
            sig do
              returns(
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::EventOutputConfig
              )
            end
            attr_reader :event_output_config

            sig do
              params(
                event_output_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::EventOutputConfig::OrHash
              ).void
            end
            attr_writer :event_output_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # The pricing model type
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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
            end
            attr_writer :billing_cycle_configuration

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            # The configuration for the rate of the price currency to the invoicing currency.
            sig do
              returns(
                T.nilable(
                  T.any(
                    Orb::UnitConversionRateConfig,
                    Orb::TieredConversionRateConfig
                  )
                )
              )
            end
            attr_accessor :conversion_rate_config

            # An ISO 4217 currency string, or custom pricing unit identifier, in which this
            # price is billed.
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # For dimensional price: specifies a price group and dimension values
            sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
            attr_reader :dimensional_price_configuration

            sig do
              params(
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
              ).void
            end
            attr_writer :dimensional_price_configuration

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
            sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
              ).void
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
                cadence:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol,
                event_output_config:
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::EventOutputConfig::OrHash,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                conversion_rate: T.nilable(Float),
                conversion_rate_config:
                  T.nilable(
                    T.any(
                      Orb::UnitConversionRateConfig::OrHash,
                      Orb::TieredConversionRateConfig::OrHash
                    )
                  ),
                currency: T.nilable(String),
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for event_output pricing
              event_output_config:,
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
              # The configuration for the rate of the price currency to the invoicing currency.
              conversion_rate_config: nil,
              # An ISO 4217 currency string, or custom pricing unit identifier, in which this
              # price is billed.
              currency: nil,
              # For dimensional price: specifies a price group and dimension values
              dimensional_price_configuration: nil,
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
              # The pricing model type
              model_type: :event_output
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol,
                  event_output_config:
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::EventOutputConfig,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  conversion_rate_config:
                    T.nilable(
                      T.any(
                        Orb::UnitConversionRateConfig,
                        Orb::TieredConversionRateConfig
                      )
                    ),
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class EventOutputConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::EventOutput::EventOutputConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The key in the event data to extract the unit rate from.
              sig { returns(String) }
              attr_accessor :unit_rating_key

              # If provided, this amount will be used as the unit rate when an event does not
              # have a value for the `unit_rating_key`. If not provided, events missing a unit
              # rate will be ignored.
              sig { returns(T.nilable(String)) }
              attr_accessor :default_unit_rate

              # An optional key in the event data to group by (e.g., event ID). All events will
              # also be grouped by their unit rate.
              sig { returns(T.nilable(String)) }
              attr_accessor :grouping_key

              # Configuration for event_output pricing
              sig do
                params(
                  unit_rating_key: String,
                  default_unit_rate: T.nilable(String),
                  grouping_key: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The key in the event data to extract the unit rate from.
                unit_rating_key:,
                # If provided, this amount will be used as the unit rate when an event does not
                # have a value for the `unit_rating_key`. If not provided, events missing a unit
                # rate will be ignored.
                default_unit_rate: nil,
                # An optional key in the event data to group by (e.g., event ID). All events will
                # also be grouped by their unit rate.
                grouping_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    unit_rating_key: String,
                    default_unit_rate: T.nilable(String),
                    grouping_key: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::Variants
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
