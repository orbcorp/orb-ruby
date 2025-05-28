# typed: strong

module Orb
  module Models
    class SubscriptionChangeCancelResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::Models::SubscriptionChangeCancelResponse,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Subscription change will be cancelled at this time and can no longer be applied.
      sig { returns(Time) }
      attr_accessor :expiration_time

      sig do
        returns(
          Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        returns(
          T.nilable(Orb::Models::SubscriptionChangeCancelResponse::Subscription)
        )
      end
      attr_reader :subscription

      sig do
        params(
          subscription:
            T.nilable(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::OrHash
            )
        ).void
      end
      attr_writer :subscription

      # When this change was applied.
      sig { returns(T.nilable(Time)) }
      attr_accessor :applied_at

      # When this change was cancelled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # A subscription change represents a desired new subscription / pending change to
      # an existing subscription. It is a way to first preview the effects on the
      # subscription as well as any changes/creation of invoices (see
      # `subscription.changed_resources`).
      sig do
        params(
          id: String,
          expiration_time: Time,
          status:
            Orb::Models::SubscriptionChangeCancelResponse::Status::OrSymbol,
          subscription:
            T.nilable(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::OrHash
            ),
          applied_at: T.nilable(Time),
          cancelled_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Subscription change will be cancelled at this time and can no longer be applied.
        expiration_time:,
        status:,
        subscription:,
        # When this change was applied.
        applied_at: nil,
        # When this change was cancelled.
        cancelled_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            expiration_time: Time,
            status:
              Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol,
            subscription:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription
              ),
            applied_at: T.nilable(Time),
            cancelled_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::Models::SubscriptionChangeCancelResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )
        APPLIED =
          T.let(
            :applied,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Subscription < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The current plan phase that is active, only if the subscription's plan has
        # phases.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :active_plan_phase_order

        # The adjustment intervals for this subscription sorted by the start_date of the
        # adjustment interval.
        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval
            ]
          )
        end
        attr_accessor :adjustment_intervals

        # Determines whether issued invoices for this subscription will automatically be
        # charged with the saved payment method on the due date. This property defaults to
        # the plan's behavior. If null, defaults to the customer's setting.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :auto_collection

        sig do
          returns(
            Orb::Models::SubscriptionChangeCancelResponse::Subscription::BillingCycleAnchorConfiguration
          )
        end
        attr_reader :billing_cycle_anchor_configuration

        sig do
          params(
            billing_cycle_anchor_configuration:
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::BillingCycleAnchorConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_anchor_configuration

        # The day of the month on which the billing cycle is anchored. If the maximum
        # number of days in a month is greater than this value, the last day of the month
        # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        # period begins on the 30th.
        sig { returns(Integer) }
        attr_accessor :billing_cycle_day

        sig { returns(Time) }
        attr_accessor :created_at

        # The end of the current billing period. This is an exclusive timestamp, such that
        # the instant returned is not part of the billing period. Set to null for
        # subscriptions that are not currently active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_end_date

        # The start date of the current billing period. This is an inclusive timestamp;
        # the instant returned is exactly the beginning of the billing period. Set to null
        # if the subscription is not currently active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_start_date

        # A customer is a buyer of your products, and the other party to the billing
        # relationship.
        #
        # In Orb, customers are assigned system generated identifiers automatically, but
        # it's often desirable to have these match existing identifiers in your system. To
        # avoid having to denormalize Orb ID information, you can pass in an
        # `external_customer_id` with your own identifier. See
        # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        # information about how these aliases work in Orb.
        #
        # In addition to having an identifier in your system, a customer may exist in a
        # payment provider solution like Stripe. Use the `payment_provider_id` and the
        # `payment_provider` enum field to express this mapping.
        #
        # A customer also has a timezone (from the standard
        # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        # your account's timezone. See [Timezone localization](/essentials/timezones) for
        # information on what this timezone parameter influences within Orb.
        sig { returns(Orb::Customer) }
        attr_reader :customer

        sig { params(customer: Orb::Customer::OrHash).void }
        attr_writer :customer

        # Determines the default memo on this subscriptions' invoices. Note that if this
        # is not provided, it is determined by the plan configuration.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_invoice_memo

        # The discount intervals for this subscription sorted by the start_date.
        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Variants
            ]
          )
        end
        attr_accessor :discount_intervals

        # The date Orb stops billing for this subscription.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::FixedFeeQuantitySchedule
            ]
          )
        end
        attr_accessor :fixed_fee_quantity_schedule

        sig { returns(T.nilable(String)) }
        attr_accessor :invoicing_threshold

        # The maximum intervals for this subscription sorted by the start_date.
        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval
            ]
          )
        end
        attr_accessor :maximum_intervals

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # The minimum intervals for this subscription sorted by the start_date.
        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval
            ]
          )
        end
        attr_accessor :minimum_intervals

        # The name of the subscription.
        sig { returns(String) }
        attr_accessor :name

        # Determines the difference between the invoice issue date for subscription
        # invoices as the date that they are due. A value of `0` here represents that the
        # invoice is due on issue, whereas a value of `30` represents that the customer
        # has a month to pay the invoice.
        sig { returns(Integer) }
        attr_accessor :net_terms

        # A pending subscription change if one exists on this subscription.
        sig do
          returns(
            T.nilable(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::PendingSubscriptionChange
            )
          )
        end
        attr_reader :pending_subscription_change

        sig do
          params(
            pending_subscription_change:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::PendingSubscriptionChange::OrHash
              )
          ).void
        end
        attr_writer :pending_subscription_change

        # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        # subscribed to by a customer. Plans define the billing behavior of the
        # subscription. You can see more about how to configure prices in the
        # [Price resource](/reference/price).
        sig { returns(T.nilable(Orb::Plan)) }
        attr_reader :plan

        sig { params(plan: T.nilable(Orb::Plan::OrHash)).void }
        attr_writer :plan

        # The price intervals for this subscription.
        sig do
          returns(
            T::Array[
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval
            ]
          )
        end
        attr_accessor :price_intervals

        sig do
          returns(
            T.nilable(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::RedeemedCoupon
            )
          )
        end
        attr_reader :redeemed_coupon

        sig do
          params(
            redeemed_coupon:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::RedeemedCoupon::OrHash
              )
          ).void
        end
        attr_writer :redeemed_coupon

        # The date Orb starts billing for this subscription.
        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          returns(
            Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(
            Orb::Models::SubscriptionChangeCancelResponse::Subscription::TrialInfo
          )
        end
        attr_reader :trial_info

        sig do
          params(
            trial_info:
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::TrialInfo::OrHash
          ).void
        end
        attr_writer :trial_info

        # The resources that were changed as part of this operation. Only present when
        # fetched through the subscription changes API or if the
        # `include_changed_resources` parameter was passed in the request.
        sig do
          returns(
            T.nilable(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::ChangedResources
            )
          )
        end
        attr_reader :changed_resources

        sig do
          params(
            changed_resources:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::ChangedResources::OrHash
              )
          ).void
        end
        attr_writer :changed_resources

        sig do
          params(
            id: String,
            active_plan_phase_order: T.nilable(Integer),
            adjustment_intervals:
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::OrHash
              ],
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_anchor_configuration:
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::BillingCycleAnchorConfiguration::OrHash,
            billing_cycle_day: Integer,
            created_at: Time,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            customer: Orb::Customer::OrHash,
            default_invoice_memo: T.nilable(String),
            discount_intervals:
              T::Array[
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::OrHash
                )
              ],
            end_date: T.nilable(Time),
            fixed_fee_quantity_schedule:
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::FixedFeeQuantitySchedule::OrHash
              ],
            invoicing_threshold: T.nilable(String),
            maximum_intervals:
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::OrHash
              ],
            metadata: T::Hash[Symbol, String],
            minimum_intervals:
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::OrHash
              ],
            name: String,
            net_terms: Integer,
            pending_subscription_change:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::PendingSubscriptionChange::OrHash
              ),
            plan: T.nilable(Orb::Plan::OrHash),
            price_intervals:
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval::OrHash
              ],
            redeemed_coupon:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::RedeemedCoupon::OrHash
              ),
            start_date: Time,
            status:
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::OrSymbol,
            trial_info:
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::TrialInfo::OrHash,
            changed_resources:
              T.nilable(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::ChangedResources::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The current plan phase that is active, only if the subscription's plan has
          # phases.
          active_plan_phase_order:,
          # The adjustment intervals for this subscription sorted by the start_date of the
          # adjustment interval.
          adjustment_intervals:,
          # Determines whether issued invoices for this subscription will automatically be
          # charged with the saved payment method on the due date. This property defaults to
          # the plan's behavior. If null, defaults to the customer's setting.
          auto_collection:,
          billing_cycle_anchor_configuration:,
          # The day of the month on which the billing cycle is anchored. If the maximum
          # number of days in a month is greater than this value, the last day of the month
          # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
          # period begins on the 30th.
          billing_cycle_day:,
          created_at:,
          # The end of the current billing period. This is an exclusive timestamp, such that
          # the instant returned is not part of the billing period. Set to null for
          # subscriptions that are not currently active.
          current_billing_period_end_date:,
          # The start date of the current billing period. This is an inclusive timestamp;
          # the instant returned is exactly the beginning of the billing period. Set to null
          # if the subscription is not currently active.
          current_billing_period_start_date:,
          # A customer is a buyer of your products, and the other party to the billing
          # relationship.
          #
          # In Orb, customers are assigned system generated identifiers automatically, but
          # it's often desirable to have these match existing identifiers in your system. To
          # avoid having to denormalize Orb ID information, you can pass in an
          # `external_customer_id` with your own identifier. See
          # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
          # information about how these aliases work in Orb.
          #
          # In addition to having an identifier in your system, a customer may exist in a
          # payment provider solution like Stripe. Use the `payment_provider_id` and the
          # `payment_provider` enum field to express this mapping.
          #
          # A customer also has a timezone (from the standard
          # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
          # your account's timezone. See [Timezone localization](/essentials/timezones) for
          # information on what this timezone parameter influences within Orb.
          customer:,
          # Determines the default memo on this subscriptions' invoices. Note that if this
          # is not provided, it is determined by the plan configuration.
          default_invoice_memo:,
          # The discount intervals for this subscription sorted by the start_date.
          discount_intervals:,
          # The date Orb stops billing for this subscription.
          end_date:,
          fixed_fee_quantity_schedule:,
          invoicing_threshold:,
          # The maximum intervals for this subscription sorted by the start_date.
          maximum_intervals:,
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          # The minimum intervals for this subscription sorted by the start_date.
          minimum_intervals:,
          # The name of the subscription.
          name:,
          # Determines the difference between the invoice issue date for subscription
          # invoices as the date that they are due. A value of `0` here represents that the
          # invoice is due on issue, whereas a value of `30` represents that the customer
          # has a month to pay the invoice.
          net_terms:,
          # A pending subscription change if one exists on this subscription.
          pending_subscription_change:,
          # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
          # subscribed to by a customer. Plans define the billing behavior of the
          # subscription. You can see more about how to configure prices in the
          # [Price resource](/reference/price).
          plan:,
          # The price intervals for this subscription.
          price_intervals:,
          redeemed_coupon:,
          # The date Orb starts billing for this subscription.
          start_date:,
          status:,
          trial_info:,
          # The resources that were changed as part of this operation. Only present when
          # fetched through the subscription changes API or if the
          # `include_changed_resources` parameter was passed in the request.
          changed_resources: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active_plan_phase_order: T.nilable(Integer),
              adjustment_intervals:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval
                ],
              auto_collection: T.nilable(T::Boolean),
              billing_cycle_anchor_configuration:
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::BillingCycleAnchorConfiguration,
              billing_cycle_day: Integer,
              created_at: Time,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              customer: Orb::Customer,
              default_invoice_memo: T.nilable(String),
              discount_intervals:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Variants
                ],
              end_date: T.nilable(Time),
              fixed_fee_quantity_schedule:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::FixedFeeQuantitySchedule
                ],
              invoicing_threshold: T.nilable(String),
              maximum_intervals:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval
                ],
              metadata: T::Hash[Symbol, String],
              minimum_intervals:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval
                ],
              name: String,
              net_terms: Integer,
              pending_subscription_change:
                T.nilable(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::PendingSubscriptionChange
                ),
              plan: T.nilable(Orb::Plan),
              price_intervals:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval
                ],
              redeemed_coupon:
                T.nilable(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::RedeemedCoupon
                ),
              start_date: Time,
              status:
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol,
              trial_info:
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::TrialInfo,
              changed_resources:
                T.nilable(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::ChangedResources
                )
            }
          )
        end
        def to_hash
        end

        class AdjustmentInterval < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Variants
            )
          end
          attr_accessor :adjustment

          # The price interval IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          # The end date of the adjustment interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # The start date of the adjustment interval.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              id: String,
              adjustment:
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::OrHash,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::OrHash
                ),
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            adjustment:,
            # The price interval IDs that this adjustment applies to.
            applies_to_price_interval_ids:,
            # The end date of the adjustment interval.
            end_date:,
            # The start date of the adjustment interval.
            start_date:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment:
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Variants,
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                start_date: Time
              }
            )
          end
          def to_hash
          end

          module Adjustment
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum
                )
              end

            class UsageDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              # The number of usage units by which to discount the price this adjustment applies
              # to in a given billing period.
              sig { returns(Float) }
              attr_accessor :usage_discount

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  usage_discount: Float,
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                # The number of usage units by which to discount the price this adjustment applies
                # to in a given billing period.
                usage_discount:,
                adjustment_type: :usage_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String),
                    usage_discount: Float
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class AmountDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The amount by which to discount the prices this adjustment applies to in a given
              # billing period.
              sig { returns(String) }
              attr_accessor :amount_discount

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The amount by which to discount the prices this adjustment applies to in a given
                # billing period.
                amount_discount:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :amount_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class PercentageDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The percentage (as a value between 0 and 1) by which to discount the price
              # intervals this adjustment applies to in a given billing period.
              sig { returns(Float) }
              attr_accessor :percentage_discount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  percentage_discount: Float,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The percentage (as a value between 0 and 1) by which to discount the price
                # intervals this adjustment applies to in a given billing period.
                percentage_discount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :percentage_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    percentage_discount: Float,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Minimum < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The item ID that revenue from this minimum will be attributed to.
              sig { returns(String) }
              attr_accessor :item_id

              # The minimum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              sig { returns(String) }
              attr_accessor :minimum_amount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  item_id: String,
                  minimum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The item ID that revenue from this minimum will be attributed to.
                item_id:,
                # The minimum amount to charge in a given billing period for the prices this
                # adjustment applies to.
                minimum_amount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :minimum
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    item_id: String,
                    minimum_amount: String,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Maximum < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The maximum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              sig { returns(String) }
              attr_accessor :maximum_amount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  maximum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The maximum amount to charge in a given billing period for the prices this
                # adjustment applies to.
                maximum_amount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :maximum
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    maximum_amount: String,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::AdjustmentInterval::Adjustment::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class BillingCycleAnchorConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::BillingCycleAnchorConfiguration,
                Orb::Internal::AnyHash
              )
            end

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
            params(
              day: Integer,
              month: T.nilable(Integer),
              year: T.nilable(Integer)
            ).returns(T.attached_class)
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
          )
          end

          sig do
            override.returns(
              {
                day: Integer,
                month: T.nilable(Integer),
                year: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        module DiscountInterval
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount,
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage,
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage
              )
            end

          class Amount < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount,
                  Orb::Internal::AnyHash
                )
              end

            # Only available if discount_type is `amount`.
            sig { returns(String) }
            attr_accessor :amount_discount

            # The price interval ids that this discount interval applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_interval_ids

            sig { returns(Symbol) }
            attr_accessor :discount_type

            # The end date of the discount interval.
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # The filters that determine which prices this discount interval applies to.
            sig do
              returns(
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter
                ]
              )
            end
            attr_accessor :filters

            # The start date of the discount interval.
            sig { returns(Time) }
            attr_accessor :start_date

            sig do
              params(
                amount_discount: String,
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::OrHash
                  ],
                start_date: Time,
                discount_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Only available if discount_type is `amount`.
              amount_discount:,
              # The price interval ids that this discount interval applies to.
              applies_to_price_interval_ids:,
              # The end date of the discount interval.
              end_date:,
              # The filters that determine which prices this discount interval applies to.
              filters:,
              # The start date of the discount interval.
              start_date:,
              discount_type: :amount
            )
            end

            sig do
              override.returns(
                {
                  amount_discount: String,
                  applies_to_price_interval_ids: T::Array[String],
                  discount_type: Symbol,
                  end_date: T.nilable(Time),
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter
                    ],
                  start_date: Time
                }
              )
            end
            def to_hash
            end

            class Filter < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # The property of the price to filter on.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                )
              end
              attr_accessor :field

              # Should prices that match the filter be included or excluded.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              # The IDs or values that match this filter.
              sig { returns(T::Array[String]) }
              attr_accessor :values

              sig do
                params(
                  field:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::OrSymbol,
                  operator:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::OrSymbol,
                  values: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # The property of the price to filter on.
                field:,
                # Should prices that match the filter be included or excluded.
                operator:,
                # The IDs or values that match this filter.
                values:
              )
              end

              sig do
                override.returns(
                  {
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::TaggedSymbol,
                    values: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # The property of the price to filter on.
              module Field
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE_ID =
                  T.let(
                    :price_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                  )
                ITEM_ID =
                  T.let(
                    :item_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                  )
                PRICE_TYPE =
                  T.let(
                    :price_type,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                  )
                PRICING_UNIT_ID =
                  T.let(
                    :pricing_unit_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Field::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Should prices that match the filter be included or excluded.
              module Operator
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCLUDES =
                  T.let(
                    :includes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::TaggedSymbol
                  )
                EXCLUDES =
                  T.let(
                    :excludes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Amount::Filter::Operator::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Percentage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage,
                  Orb::Internal::AnyHash
                )
              end

            # The price interval ids that this discount interval applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_interval_ids

            sig { returns(Symbol) }
            attr_accessor :discount_type

            # The end date of the discount interval.
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # The filters that determine which prices this discount interval applies to.
            sig do
              returns(
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter
                ]
              )
            end
            attr_accessor :filters

            # Only available if discount_type is `percentage`.This is a number between 0
            # and 1.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            # The start date of the discount interval.
            sig { returns(Time) }
            attr_accessor :start_date

            sig do
              params(
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::OrHash
                  ],
                percentage_discount: Float,
                start_date: Time,
                discount_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price interval ids that this discount interval applies to.
              applies_to_price_interval_ids:,
              # The end date of the discount interval.
              end_date:,
              # The filters that determine which prices this discount interval applies to.
              filters:,
              # Only available if discount_type is `percentage`.This is a number between 0
              # and 1.
              percentage_discount:,
              # The start date of the discount interval.
              start_date:,
              discount_type: :percentage
            )
            end

            sig do
              override.returns(
                {
                  applies_to_price_interval_ids: T::Array[String],
                  discount_type: Symbol,
                  end_date: T.nilable(Time),
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter
                    ],
                  percentage_discount: Float,
                  start_date: Time
                }
              )
            end
            def to_hash
            end

            class Filter < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # The property of the price to filter on.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                )
              end
              attr_accessor :field

              # Should prices that match the filter be included or excluded.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              # The IDs or values that match this filter.
              sig { returns(T::Array[String]) }
              attr_accessor :values

              sig do
                params(
                  field:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::OrSymbol,
                  operator:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::OrSymbol,
                  values: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # The property of the price to filter on.
                field:,
                # Should prices that match the filter be included or excluded.
                operator:,
                # The IDs or values that match this filter.
                values:
              )
              end

              sig do
                override.returns(
                  {
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::TaggedSymbol,
                    values: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # The property of the price to filter on.
              module Field
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE_ID =
                  T.let(
                    :price_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                  )
                ITEM_ID =
                  T.let(
                    :item_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                  )
                PRICE_TYPE =
                  T.let(
                    :price_type,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                  )
                PRICING_UNIT_ID =
                  T.let(
                    :pricing_unit_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Field::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Should prices that match the filter be included or excluded.
              module Operator
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCLUDES =
                  T.let(
                    :includes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::TaggedSymbol
                  )
                EXCLUDES =
                  T.let(
                    :excludes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Percentage::Filter::Operator::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Usage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage,
                  Orb::Internal::AnyHash
                )
              end

            # The price interval ids that this discount interval applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_interval_ids

            sig { returns(Symbol) }
            attr_accessor :discount_type

            # The end date of the discount interval.
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # The filters that determine which prices this discount interval applies to.
            sig do
              returns(
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter
                ]
              )
            end
            attr_accessor :filters

            # The start date of the discount interval.
            sig { returns(Time) }
            attr_accessor :start_date

            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for
            sig { returns(Float) }
            attr_accessor :usage_discount

            sig do
              params(
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::OrHash
                  ],
                start_date: Time,
                usage_discount: Float,
                discount_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price interval ids that this discount interval applies to.
              applies_to_price_interval_ids:,
              # The end date of the discount interval.
              end_date:,
              # The filters that determine which prices this discount interval applies to.
              filters:,
              # The start date of the discount interval.
              start_date:,
              # Only available if discount_type is `usage`. Number of usage units that this
              # discount is for
              usage_discount:,
              discount_type: :usage
            )
            end

            sig do
              override.returns(
                {
                  applies_to_price_interval_ids: T::Array[String],
                  discount_type: Symbol,
                  end_date: T.nilable(Time),
                  filters:
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter
                    ],
                  start_date: Time,
                  usage_discount: Float
                }
              )
            end
            def to_hash
            end

            class Filter < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # The property of the price to filter on.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                )
              end
              attr_accessor :field

              # Should prices that match the filter be included or excluded.
              sig do
                returns(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              # The IDs or values that match this filter.
              sig { returns(T::Array[String]) }
              attr_accessor :values

              sig do
                params(
                  field:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::OrSymbol,
                  operator:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::OrSymbol,
                  values: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # The property of the price to filter on.
                field:,
                # Should prices that match the filter be included or excluded.
                operator:,
                # The IDs or values that match this filter.
                values:
              )
              end

              sig do
                override.returns(
                  {
                    field:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol,
                    operator:
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::TaggedSymbol,
                    values: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # The property of the price to filter on.
              module Field
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE_ID =
                  T.let(
                    :price_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                  )
                ITEM_ID =
                  T.let(
                    :item_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                  )
                PRICE_TYPE =
                  T.let(
                    :price_type,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                  )
                PRICING_UNIT_ID =
                  T.let(
                    :pricing_unit_id,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Field::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Should prices that match the filter be included or excluded.
              module Operator
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCLUDES =
                  T.let(
                    :includes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::TaggedSymbol
                  )
                EXCLUDES =
                  T.let(
                    :excludes,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Usage::Filter::Operator::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::DiscountInterval::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class FixedFeeQuantitySchedule < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::FixedFeeQuantitySchedule,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(String) }
          attr_accessor :price_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              end_date: T.nilable(Time),
              price_id: String,
              quantity: Float,
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(end_date:, price_id:, quantity:, start_date:)
          end

          sig do
            override.returns(
              {
                end_date: T.nilable(Time),
                price_id: String,
                quantity: Float,
                start_date: Time
              }
            )
          end
          def to_hash
          end
        end

        class MaximumInterval < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval,
                Orb::Internal::AnyHash
              )
            end

          # The price interval ids that this maximum interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          # The end date of the maximum interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # The filters that determine which prices this maximum interval applies to.
          sig do
            returns(
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter
              ]
            )
          end
          attr_accessor :filters

          # The maximum amount to charge in a given billing period for the price intervals
          # this transform applies to.
          sig { returns(String) }
          attr_accessor :maximum_amount

          # The start date of the maximum interval.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::OrHash
                ],
              maximum_amount: String,
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The price interval ids that this maximum interval applies to.
            applies_to_price_interval_ids:,
            # The end date of the maximum interval.
            end_date:,
            # The filters that determine which prices this maximum interval applies to.
            filters:,
            # The maximum amount to charge in a given billing period for the price intervals
            # this transform applies to.
            maximum_amount:,
            # The start date of the maximum interval.
            start_date:
          )
          end

          sig do
            override.returns(
              {
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter
                  ],
                maximum_amount: String,
                start_date: Time
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MaximumInterval::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class MinimumInterval < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval,
                Orb::Internal::AnyHash
              )
            end

          # The price interval ids that this minimum interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          # The end date of the minimum interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # The filters that determine which prices this minimum interval applies to.
          sig do
            returns(
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter
              ]
            )
          end
          attr_accessor :filters

          # The minimum amount to charge in a given billing period for the price intervals
          # this minimum applies to.
          sig { returns(String) }
          attr_accessor :minimum_amount

          # The start date of the minimum interval.
          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              filters:
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::OrHash
                ],
              minimum_amount: String,
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The price interval ids that this minimum interval applies to.
            applies_to_price_interval_ids:,
            # The end date of the minimum interval.
            end_date:,
            # The filters that determine which prices this minimum interval applies to.
            filters:,
            # The minimum amount to charge in a given billing period for the price intervals
            # this minimum applies to.
            minimum_amount:,
            # The start date of the minimum interval.
            start_date:
          )
          end

          sig do
            override.returns(
              {
                applies_to_price_interval_ids: T::Array[String],
                end_date: T.nilable(Time),
                filters:
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter
                  ],
                minimum_amount: String,
                start_date: Time
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::OrSymbol,
                operator:
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::MinimumInterval::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class PendingSubscriptionChange < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::PendingSubscriptionChange,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # A pending subscription change if one exists on this subscription.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class PriceInterval < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # The day of the month that Orb bills for this price
          sig { returns(Integer) }
          attr_accessor :billing_cycle_day

          # The end of the current billing period. This is an exclusive timestamp, such that
          # the instant returned is exactly the end of the billing period. Set to null if
          # this price interval is not currently active.
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_end_date

          # The start date of the current billing period. This is an inclusive timestamp;
          # the instant returned is exactly the beginning of the billing period. Set to null
          # if this price interval is not currently active.
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_start_date

          # The end date of the price interval. This is the date that Orb stops billing for
          # this price.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # An additional filter to apply to usage queries.
          sig { returns(T.nilable(String)) }
          attr_accessor :filter

          # The fixed fee quantity transitions for this price interval. This is only
          # relevant for fixed fees.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval::FixedFeeQuantityTransition
                ]
              )
            )
          end
          attr_accessor :fixed_fee_quantity_transitions

          # The Price resource represents a price that can be billed on a subscription,
          # resulting in a charge on an invoice in the form of an invoice line item. Prices
          # take a quantity and determine an amount to bill.
          #
          # Orb supports a few different pricing models out of the box. Each of these models
          # is serialized differently in a given Price object. The model_type field
          # determines the key for the configuration object that is present.
          #
          # For more on the types of prices, see
          # [the core concepts documentation](/core-concepts#plan-and-price)
          sig { returns(Orb::Price::Variants) }
          attr_accessor :price

          # The start date of the price interval. This is the date that Orb starts billing
          # for this price.
          sig { returns(Time) }
          attr_accessor :start_date

          # A list of customer IDs whose usage events will be aggregated and billed under
          # this price interval.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :usage_customer_ids

          # The Price Interval resource represents a period of time for which a price will
          # bill on a subscription. A subscription’s price intervals define its billing
          # behavior.
          sig do
            params(
              id: String,
              billing_cycle_day: Integer,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              end_date: T.nilable(Time),
              filter: T.nilable(String),
              fixed_fee_quantity_transitions:
                T.nilable(
                  T::Array[
                    Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval::FixedFeeQuantityTransition::OrHash
                  ]
                ),
              price:
                T.any(
                  Orb::Price::Unit::OrHash,
                  Orb::Price::Package::OrHash,
                  Orb::Price::Matrix::OrHash,
                  Orb::Price::Tiered::OrHash,
                  Orb::Price::TieredBps::OrHash,
                  Orb::Price::Bps::OrHash,
                  Orb::Price::BulkBps::OrHash,
                  Orb::Price::Bulk::OrHash,
                  Orb::Price::ThresholdTotalAmount::OrHash,
                  Orb::Price::TieredPackage::OrHash,
                  Orb::Price::GroupedTiered::OrHash,
                  Orb::Price::TieredWithMinimum::OrHash,
                  Orb::Price::TieredPackageWithMinimum::OrHash,
                  Orb::Price::PackageWithAllocation::OrHash,
                  Orb::Price::UnitWithPercent::OrHash,
                  Orb::Price::MatrixWithAllocation::OrHash,
                  Orb::Price::TieredWithProration::OrHash,
                  Orb::Price::UnitWithProration::OrHash,
                  Orb::Price::GroupedAllocation::OrHash,
                  Orb::Price::GroupedWithProratedMinimum::OrHash,
                  Orb::Price::GroupedWithMeteredMinimum::OrHash,
                  Orb::Price::MatrixWithDisplayName::OrHash,
                  Orb::Price::BulkWithProration::OrHash,
                  Orb::Price::GroupedTieredPackage::OrHash,
                  Orb::Price::MaxGroupTieredPackage::OrHash,
                  Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
                  Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
                  Orb::Price::CumulativeGroupedBulk::OrHash
                ),
              start_date: Time,
              usage_customer_ids: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The day of the month that Orb bills for this price
            billing_cycle_day:,
            # The end of the current billing period. This is an exclusive timestamp, such that
            # the instant returned is exactly the end of the billing period. Set to null if
            # this price interval is not currently active.
            current_billing_period_end_date:,
            # The start date of the current billing period. This is an inclusive timestamp;
            # the instant returned is exactly the beginning of the billing period. Set to null
            # if this price interval is not currently active.
            current_billing_period_start_date:,
            # The end date of the price interval. This is the date that Orb stops billing for
            # this price.
            end_date:,
            # An additional filter to apply to usage queries.
            filter:,
            # The fixed fee quantity transitions for this price interval. This is only
            # relevant for fixed fees.
            fixed_fee_quantity_transitions:,
            # The Price resource represents a price that can be billed on a subscription,
            # resulting in a charge on an invoice in the form of an invoice line item. Prices
            # take a quantity and determine an amount to bill.
            #
            # Orb supports a few different pricing models out of the box. Each of these models
            # is serialized differently in a given Price object. The model_type field
            # determines the key for the configuration object that is present.
            #
            # For more on the types of prices, see
            # [the core concepts documentation](/core-concepts#plan-and-price)
            price:,
            # The start date of the price interval. This is the date that Orb starts billing
            # for this price.
            start_date:,
            # A list of customer IDs whose usage events will be aggregated and billed under
            # this price interval.
            usage_customer_ids:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_cycle_day: Integer,
                current_billing_period_end_date: T.nilable(Time),
                current_billing_period_start_date: T.nilable(Time),
                end_date: T.nilable(Time),
                filter: T.nilable(String),
                fixed_fee_quantity_transitions:
                  T.nilable(
                    T::Array[
                      Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval::FixedFeeQuantityTransition
                    ]
                  ),
                price: Orb::Price::Variants,
                start_date: Time,
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end

          class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::SubscriptionChangeCancelResponse::Subscription::PriceInterval::FixedFeeQuantityTransition,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :effective_date

            sig { returns(String) }
            attr_accessor :price_id

            sig { returns(Integer) }
            attr_accessor :quantity

            sig do
              params(
                effective_date: Time,
                price_id: String,
                quantity: Integer
              ).returns(T.attached_class)
            end
            def self.new(effective_date:, price_id:, quantity:)
            end

            sig do
              override.returns(
                { effective_date: Time, price_id: String, quantity: Integer }
              )
            end
            def to_hash
            end
          end
        end

        class RedeemedCoupon < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::RedeemedCoupon,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :coupon_id

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              coupon_id: String,
              end_date: T.nilable(Time),
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(coupon_id:, end_date:, start_date:)
          end

          sig do
            override.returns(
              { coupon_id: String, end_date: T.nilable(Time), start_date: Time }
            )
          end
          def to_hash
          end
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol
            )
          ENDED =
            T.let(
              :ended,
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol
            )
          UPCOMING =
            T.let(
              :upcoming,
              Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class TrialInfo < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::TrialInfo,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { params(end_date: T.nilable(Time)).returns(T.attached_class) }
          def self.new(end_date:)
          end

          sig { override.returns({ end_date: T.nilable(Time) }) }
          def to_hash
          end
        end

        class ChangedResources < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::SubscriptionChangeCancelResponse::Subscription::ChangedResources,
                Orb::Internal::AnyHash
              )
            end

          # The credit notes that were created as part of this operation.
          sig { returns(T::Array[Orb::CreditNote]) }
          attr_accessor :created_credit_notes

          # The invoices that were created as part of this operation.
          sig { returns(T::Array[Orb::Invoice]) }
          attr_accessor :created_invoices

          # The credit notes that were voided as part of this operation.
          sig { returns(T::Array[Orb::CreditNote]) }
          attr_accessor :voided_credit_notes

          # The invoices that were voided as part of this operation.
          sig { returns(T::Array[Orb::Invoice]) }
          attr_accessor :voided_invoices

          # The resources that were changed as part of this operation. Only present when
          # fetched through the subscription changes API or if the
          # `include_changed_resources` parameter was passed in the request.
          sig do
            params(
              created_credit_notes: T::Array[Orb::CreditNote::OrHash],
              created_invoices: T::Array[Orb::Invoice::OrHash],
              voided_credit_notes: T::Array[Orb::CreditNote::OrHash],
              voided_invoices: T::Array[Orb::Invoice::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit notes that were created as part of this operation.
            created_credit_notes:,
            # The invoices that were created as part of this operation.
            created_invoices:,
            # The credit notes that were voided as part of this operation.
            voided_credit_notes:,
            # The invoices that were voided as part of this operation.
            voided_invoices:
          )
          end

          sig do
            override.returns(
              {
                created_credit_notes: T::Array[Orb::CreditNote],
                created_invoices: T::Array[Orb::Invoice],
                voided_credit_notes: T::Array[Orb::CreditNote],
                voided_invoices: T::Array[Orb::Invoice]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
