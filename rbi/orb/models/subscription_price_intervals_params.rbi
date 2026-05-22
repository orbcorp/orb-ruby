# typed: strong

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionPriceIntervalsParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      # A list of price intervals to add to the subscription.
      sig do
        returns(T.nilable(T::Array[Orb::SubscriptionPriceIntervalsParams::Add]))
      end
      attr_reader :add

      sig do
        params(
          add: T::Array[Orb::SubscriptionPriceIntervalsParams::Add::OrHash]
        ).void
      end
      attr_writer :add

      # A list of adjustments to add to the subscription.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionPriceIntervalsParams::AddAdjustment]
          )
        )
      end
      attr_reader :add_adjustments

      sig do
        params(
          add_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::AddAdjustment::OrHash
            ]
        ).void
      end
      attr_writer :add_adjustments

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # If set, the default value to use for added/edited price intervals with an
      # end_date set.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :can_defer_billing

      # A list of price intervals to edit on the subscription.
      sig do
        returns(
          T.nilable(T::Array[Orb::SubscriptionPriceIntervalsParams::Edit])
        )
      end
      attr_reader :edit

      sig do
        params(
          edit: T::Array[Orb::SubscriptionPriceIntervalsParams::Edit::OrHash]
        ).void
      end
      attr_writer :edit

      # A list of adjustments to edit on the subscription.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::SubscriptionPriceIntervalsParams::EditAdjustment]
          )
        )
      end
      attr_reader :edit_adjustments

      sig do
        params(
          edit_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::EditAdjustment::OrHash
            ]
        ).void
      end
      attr_writer :edit_adjustments

      sig do
        params(
          subscription_id: String,
          add: T::Array[Orb::SubscriptionPriceIntervalsParams::Add::OrHash],
          add_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::AddAdjustment::OrHash
            ],
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          can_defer_billing: T.nilable(T::Boolean),
          edit: T::Array[Orb::SubscriptionPriceIntervalsParams::Edit::OrHash],
          edit_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::EditAdjustment::OrHash
            ],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # A list of price intervals to add to the subscription.
        add: nil,
        # A list of adjustments to add to the subscription.
        add_adjustments: nil,
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
        # If set, the default value to use for added/edited price intervals with an
        # end_date set.
        can_defer_billing: nil,
        # A list of price intervals to edit on the subscription.
        edit: nil,
        # A list of adjustments to edit on the subscription.
        edit_adjustments: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            add: T::Array[Orb::SubscriptionPriceIntervalsParams::Add],
            add_adjustments:
              T::Array[Orb::SubscriptionPriceIntervalsParams::AddAdjustment],
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            can_defer_billing: T.nilable(T::Boolean),
            edit: T::Array[Orb::SubscriptionPriceIntervalsParams::Edit],
            edit_adjustments:
              T::Array[Orb::SubscriptionPriceIntervalsParams::EditAdjustment],
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Add < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionPriceIntervalsParams::Add,
              Orb::Internal::AnyHash
            )
          end

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        sig { returns(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)) }
        attr_accessor :start_date

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::NewAllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash)
          ).void
        end
        attr_writer :allocation_price

        # If true, an in-arrears price interval ending mid-cycle will defer billing the
        # final line item until the next scheduled invoice. If false, it will be billed on
        # its end date.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :can_defer_billing

        # A list of discounts to initialize on the price interval.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage
                )
              ]
            )
          )
        end
        attr_accessor :discounts

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_accessor :end_date

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        # An additional filter to apply to usage queries. This filter must be expressed as
        # a boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties). If
        # null, usage queries will not include any additional filter.
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # A list of fixed fee quantity transitions to initialize on the price interval.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition
              ]
            )
          )
        end
        attr_accessor :fixed_fee_quantity_transitions

        # The maximum amount that will be billed for this price interval for a given
        # billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :maximum_amount

        # Override values for parameterized billable metric variables. Keys are parameter
        # names, values are the override values (number or string).
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :metric_parameter_overrides

        # The minimum amount that will be billed for this price interval for a given
        # billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :minimum_amount

        # New floating price request body params.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingBulkPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance,
                Orb::NewFloatingMinimumCompositePrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput
              )
            )
          )
        end
        attr_accessor :price

        # The id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

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
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
            allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash),
            can_defer_billing: T.nilable(T::Boolean),
            discounts:
              T.nilable(
                T::Array[
                  T.any(
                    Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount::OrHash,
                    Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage::OrHash,
                    Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage::OrHash
                  )
                ]
              ),
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
            external_price_id: T.nilable(String),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions:
              T.nilable(
                T::Array[
                  Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition::OrHash
                ]
              ),
            maximum_amount: T.nilable(Float),
            metric_parameter_overrides: T.nilable(T::Hash[Symbol, T.anything]),
            minimum_amount: T.nilable(Float),
            price:
              T.nilable(
                T.any(
                  Orb::NewFloatingUnitPrice::OrHash,
                  Orb::NewFloatingTieredPrice::OrHash,
                  Orb::NewFloatingBulkPrice::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::OrHash,
                  Orb::NewFloatingPackagePrice::OrHash,
                  Orb::NewFloatingMatrixPrice::OrHash,
                  Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
                  Orb::NewFloatingTieredPackagePrice::OrHash,
                  Orb::NewFloatingTieredWithMinimumPrice::OrHash,
                  Orb::NewFloatingGroupedTieredPrice::OrHash,
                  Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewFloatingPackageWithAllocationPrice::OrHash,
                  Orb::NewFloatingUnitWithPercentPrice::OrHash,
                  Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::OrHash,
                  Orb::NewFloatingTieredWithProrationPrice::OrHash,
                  Orb::NewFloatingUnitWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedAllocationPrice::OrHash,
                  Orb::NewFloatingBulkWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
                  Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::OrHash,
                  Orb::NewFloatingMinimumCompositePrice::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::OrHash,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::OrHash
                )
              ),
            price_id: T.nilable(String),
            usage_customer_ids: T.nilable(T::Array[String])
          ).returns(T.attached_class)
        end
        def self.new(
          # The start date of the price interval. This is the date that the price will start
          # billing on the subscription.
          start_date:,
          # The definition of a new allocation price to create and add to the subscription.
          allocation_price: nil,
          # If true, an in-arrears price interval ending mid-cycle will defer billing the
          # final line item until the next scheduled invoice. If false, it will be billed on
          # its end date.
          can_defer_billing: nil,
          # A list of discounts to initialize on the price interval.
          discounts: nil,
          # The end date of the price interval. This is the date that the price will stop
          # billing on the subscription.
          end_date: nil,
          # The external price id of the price to add to the subscription.
          external_price_id: nil,
          # An additional filter to apply to usage queries. This filter must be expressed as
          # a boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties). If
          # null, usage queries will not include any additional filter.
          filter: nil,
          # A list of fixed fee quantity transitions to initialize on the price interval.
          fixed_fee_quantity_transitions: nil,
          # The maximum amount that will be billed for this price interval for a given
          # billing period.
          maximum_amount: nil,
          # Override values for parameterized billable metric variables. Keys are parameter
          # names, values are the override values (number or string).
          metric_parameter_overrides: nil,
          # The minimum amount that will be billed for this price interval for a given
          # billing period.
          minimum_amount: nil,
          # New floating price request body params.
          price: nil,
          # The id of the price to add to the subscription.
          price_id: nil,
          # A list of customer IDs whose usage events will be aggregated and billed under
          # this subscription. By default, a subscription only considers usage events
          # associated with its attached customer's customer_id. When usage_customer_ids is
          # provided, the subscription includes usage events from the specified customers
          # only. Provided usage_customer_ids must be either the customer for this
          # subscription itself, or any of that customer's children.
          usage_customer_ids: nil
        )
        end

        sig do
          override.returns(
            {
              start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
              allocation_price: T.nilable(Orb::NewAllocationPrice),
              can_defer_billing: T.nilable(T::Boolean),
              discounts:
                T.nilable(
                  T::Array[
                    T.any(
                      Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                      Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                      Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage
                    )
                  ]
                ),
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
              external_price_id: T.nilable(String),
              filter: T.nilable(String),
              fixed_fee_quantity_transitions:
                T.nilable(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition
                  ]
                ),
              maximum_amount: T.nilable(Float),
              metric_parameter_overrides:
                T.nilable(T::Hash[Symbol, T.anything]),
              minimum_amount: T.nilable(Float),
              price:
                T.nilable(
                  T.any(
                    Orb::NewFloatingUnitPrice,
                    Orb::NewFloatingTieredPrice,
                    Orb::NewFloatingBulkPrice,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters,
                    Orb::NewFloatingPackagePrice,
                    Orb::NewFloatingMatrixPrice,
                    Orb::NewFloatingThresholdTotalAmountPrice,
                    Orb::NewFloatingTieredPackagePrice,
                    Orb::NewFloatingTieredWithMinimumPrice,
                    Orb::NewFloatingGroupedTieredPrice,
                    Orb::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::NewFloatingPackageWithAllocationPrice,
                    Orb::NewFloatingUnitWithPercentPrice,
                    Orb::NewFloatingMatrixWithAllocationPrice,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts,
                    Orb::NewFloatingTieredWithProrationPrice,
                    Orb::NewFloatingUnitWithProrationPrice,
                    Orb::NewFloatingGroupedAllocationPrice,
                    Orb::NewFloatingBulkWithProrationPrice,
                    Orb::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds,
                    Orb::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::NewFloatingGroupedTieredPackagePrice,
                    Orb::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::NewFloatingCumulativeGroupedBulkPrice,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance,
                    Orb::NewFloatingMinimumCompositePrice,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent,
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput
                  )
                ),
              price_id: T.nilable(String),
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
        end
        def to_hash
        end

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        module StartDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Add::StartDate::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Discount
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage
              )
            end

          class Amount < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                  Orb::Internal::AnyHash
                )
              end

            # Only available if discount_type is `amount`.
            sig { returns(Float) }
            attr_accessor :amount_discount

            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig do
              params(amount_discount: Float, discount_type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # Only available if discount_type is `amount`.
              amount_discount:,
              discount_type: :amount
            )
            end

            sig do
              override.returns(
                { amount_discount: Float, discount_type: Symbol }
              )
            end
            def to_hash
            end
          end

          class Percentage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `percentage`. This is a number between 0
            # and 1.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig do
              params(percentage_discount: Float, discount_type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # Only available if discount_type is `percentage`. This is a number between 0
              # and 1.
              percentage_discount:,
              discount_type: :percentage
            )
            end

            sig do
              override.returns(
                { discount_type: Symbol, percentage_discount: Float }
              )
            end
            def to_hash
            end
          end

          class Usage < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for.
            sig { returns(Float) }
            attr_accessor :usage_discount

            sig do
              params(usage_discount: Float, discount_type: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(
              # Only available if discount_type is `usage`. Number of usage units that this
              # discount is for.
              usage_discount:,
              discount_type: :usage
            )
            end

            sig do
              override.returns({ discount_type: Symbol, usage_discount: Float })
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Add::Discount::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        module EndDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Add::EndDate::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition,
                Orb::Internal::AnyHash
              )
            end

          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          attr_accessor :effective_date

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          attr_accessor :quantity

          sig do
            params(effective_date: Time, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # The date that the fixed fee quantity transition should take effect.
            effective_date:,
            # The quantity of the fixed fee quantity transition.
            quantity:
          )
          end

          sig { override.returns({ effective_date: Time, quantity: Integer }) }
          def to_hash
          end
        end

        # New floating price request body params.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingBulkPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance,
                Orb::NewFloatingMinimumCompositePrice,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent,
                Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput
              )
            end

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters,
                  Orb::Internal::AnyHash
                )
              end

            # Configuration for bulk_with_filters pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig
              )
            end
            attr_reader :bulk_with_filters_config

            sig do
              params(
                bulk_with_filters_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash
              ).void
            end
            attr_writer :bulk_with_filters_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                bulk_with_filters_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash,
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::OrSymbol,
                currency: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Configuration for bulk_with_filters pricing
              bulk_with_filters_config:,
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :bulk_with_filters
            )
            end

            sig do
              override.returns(
                {
                  bulk_with_filters_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig,
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::OrSymbol,
                  currency: String,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                }
              )
            end
            def to_hash
            end

            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Property filters to apply (all must match)
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                  ]
                )
              end
              attr_accessor :filters

              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              # Configuration for bulk_with_filters pricing
              sig do
                params(
                  filters:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter::OrHash
                    ],
                  tiers:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier::OrHash
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
                        Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                      ],
                    tiers:
                      T::Array[
                        Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
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
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter,
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
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier,
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class MatrixWithThresholdDiscounts < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # Configuration for matrix_with_threshold_discounts pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig
              )
            end
            attr_reader :matrix_with_threshold_discounts_config

            sig do
              params(
                matrix_with_threshold_discounts_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::OrHash
              ).void
            end
            attr_writer :matrix_with_threshold_discounts_config

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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_threshold_discounts_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              # The id of the item the price will be associated with.
              item_id:,
              # Configuration for matrix_with_threshold_discounts pricing
              matrix_with_threshold_discounts_config:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :matrix_with_threshold_discounts
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  matrix_with_threshold_discounts_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MatrixWithThresholdDiscountsConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Unit price used for usage that does not match any defined matrix cell.
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # First matrix dimension key.
              sig { returns(String) }
              attr_accessor :first_dimension

              # Per-cell unit prices.
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              # Optional second matrix dimension key.
              sig { returns(T.nilable(String)) }
              attr_accessor :second_dimension

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup
                    ]
                  )
                )
              end
              attr_reader :threshold_discount_groups

              sig do
                params(
                  threshold_discount_groups:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup::OrHash
                    ]
                ).void
              end
              attr_writer :threshold_discount_groups

              # Configuration for matrix_with_threshold_discounts pricing
              sig do
                params(
                  default_unit_amount: String,
                  first_dimension: String,
                  matrix_values:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue::OrHash
                    ],
                  second_dimension: T.nilable(String),
                  threshold_discount_groups:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Unit price used for usage that does not match any defined matrix cell.
                default_unit_amount:,
                # First matrix dimension key.
                first_dimension:,
                # Per-cell unit prices.
                matrix_values:,
                # Optional second matrix dimension key.
                second_dimension: nil,
                threshold_discount_groups: nil
              )
              end

              sig do
                override.returns(
                  {
                    default_unit_amount: String,
                    first_dimension: String,
                    matrix_values:
                      T::Array[
                        Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue
                      ],
                    second_dimension: T.nilable(String),
                    threshold_discount_groups:
                      T::Array[
                        Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup
                      ]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :first_dimension_value

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :second_dimension_value

                sig do
                  params(
                    first_dimension_value: String,
                    unit_amount: String,
                    second_dimension_value: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  first_dimension_value:,
                  unit_amount:,
                  second_dimension_value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      first_dimension_value: String,
                      unit_amount: String,
                      second_dimension_value: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
              end

              class ThresholdDiscountGroup < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup,
                      Orb::Internal::AnyHash
                    )
                  end

                # Discount rate applied to spend above the threshold.
                sig { returns(String) }
                attr_accessor :above_threshold_discount_percentage

                # Discount rate applied to spend at or below the threshold. Set to 0 for no
                # baseline discount.
                sig { returns(String) }
                attr_accessor :below_threshold_discount_percentage

                # Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                # coordinate is `first,second` when the matrix has two dimensions, or just `first`
                # for a single-dimension matrix. Example: `blue,circle;green,triangle`.
                sig { returns(String) }
                attr_accessor :cell_coordinates

                sig { returns(String) }
                attr_accessor :threshold_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :description

                sig do
                  params(
                    above_threshold_discount_percentage: String,
                    below_threshold_discount_percentage: String,
                    cell_coordinates: String,
                    threshold_amount: String,
                    description: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Discount rate applied to spend above the threshold.
                  above_threshold_discount_percentage:,
                  # Discount rate applied to spend at or below the threshold. Set to 0 for no
                  # baseline discount.
                  below_threshold_discount_percentage:,
                  # Semicolon-separated list of matrix cell coordinates targeted by this group. Each
                  # coordinate is `first,second` when the matrix has two dimensions, or just `first`
                  # for a single-dimension matrix. Example: `blue,circle;green,triangle`.
                  cell_coordinates:,
                  threshold_amount:,
                  description: nil
                )
                end

                sig do
                  override.returns(
                    {
                      above_threshold_discount_percentage: String,
                      below_threshold_discount_percentage: String,
                      cell_coordinates: String,
                      threshold_amount: String,
                      description: T.nilable(String)
                    }
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
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # Configuration for grouped_with_min_max_thresholds pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
              )
            end
            attr_reader :grouped_with_min_max_thresholds_config

            sig do
              params(
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                currency: String,
                grouped_with_min_max_thresholds_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  currency: String,
                  grouped_with_min_max_thresholds_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # Configuration for cumulative_grouped_allocation pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig
              )
            end
            attr_reader :cumulative_grouped_allocation_config

            sig do
              params(
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash
              ).void
            end
            attr_writer :cumulative_grouped_allocation_config

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                cumulative_grouped_allocation_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash,
                currency: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # Configuration for cumulative_grouped_allocation pricing
              cumulative_grouped_allocation_config:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :cumulative_grouped_allocation
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
                  cumulative_grouped_allocation_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                  currency: String,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
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

          class DailyCreditAllowance < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # Configuration for daily_credit_allowance pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig
              )
            end
            attr_reader :daily_credit_allowance_config

            sig do
              params(
                daily_credit_allowance_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::OrHash
              ).void
            end
            attr_writer :daily_credit_allowance_config

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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::OrSymbol,
                currency: String,
                daily_credit_allowance_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              # Configuration for daily_credit_allowance pricing
              daily_credit_allowance_config:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :daily_credit_allowance
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::OrSymbol,
                  currency: String,
                  daily_credit_allowance_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class DailyCreditAllowanceConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # Credits granted per day. Lose-it-or-use-it; does not roll over.
              sig { returns(String) }
              attr_accessor :daily_allowance

              # Default per-unit credit rate for any usage not bucketed into a specified
              # matrix_value
              sig { returns(String) }
              attr_accessor :default_unit_amount

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              # Event property whose value identifies the day bucket the event belongs to (e.g.
              # 'event_day' set to an ISO date string in the customer's timezone). The allowance
              # resets per distinct value of this property.
              sig { returns(String) }
              attr_accessor :event_day_property

              # Per-dimension credit rates
              sig do
                returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              # Configuration for daily_credit_allowance pricing
              sig do
                params(
                  daily_allowance: String,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  event_day_property: String,
                  matrix_values:
                    T::Array[
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Credits granted per day. Lose-it-or-use-it; does not roll over.
                daily_allowance:,
                # Default per-unit credit rate for any usage not bucketed into a specified
                # matrix_value
                default_unit_amount:,
                # One or two event property values to evaluate matrix groups by
                dimensions:,
                # Event property whose value identifies the day bucket the event belongs to (e.g.
                # 'event_day' set to an ISO date string in the customer's timezone). The allowance
                # resets per distinct value of this property.
                event_day_property:,
                # Per-dimension credit rates
                matrix_values:
              )
              end

              sig do
                override.returns(
                  {
                    daily_allowance: String,
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    event_day_property: String,
                    matrix_values:
                      T::Array[
                        Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue
                      ]
                  }
                )
              end
              def to_hash
              end

              class MatrixValue < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::SubscriptionPriceIntervalsParams::Add::Price::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  end

                # One or two matrix keys to filter usage to this value by. For example, ["model"]
                # could be used to apply a different credit rate to each AI model.
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                # Credits charged per unit of usage matching the specified dimension_values
                sig { returns(String) }
                attr_accessor :unit_amount

                # Per-dimension credit price for the daily credit allowance model.
                sig do
                  params(
                    dimension_values: T::Array[T.nilable(String)],
                    unit_amount: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # One or two matrix keys to filter usage to this value by. For example, ["model"]
                  # could be used to apply a different credit rate to each AI model.
                  dimension_values:,
                  # Credits charged per unit of usage matching the specified dimension_values
                  unit_amount:
                )
                end

                sig do
                  override.returns(
                    {
                      dimension_values: T::Array[T.nilable(String)],
                      unit_amount: String
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end

          class MeteredAllowance < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            # Configuration for metered_allowance pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::MeteredAllowanceConfig
              )
            end
            attr_reader :metered_allowance_config

            sig do
              params(
                metered_allowance_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::MeteredAllowanceConfig::OrHash
              ).void
            end
            attr_writer :metered_allowance_config

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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                metered_allowance_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::MeteredAllowanceConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              # The id of the item the price will be associated with.
              item_id:,
              # Configuration for metered_allowance pricing
              metered_allowance_config:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :metered_allowance
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  metered_allowance_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::MeteredAllowanceConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MeteredAllowanceConfig < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::MeteredAllowance::MeteredAllowanceConfig,
                    Orb::Internal::AnyHash
                  )
                end

              # The grouping_key value whose summed quantity represents the allowance for this
              # period (e.g. 'storage_snapshot' emitting 3 × avg storage). Capped at consumption
              # — credit can never exceed actual usage.
              sig { returns(String) }
              attr_accessor :allowance_grouping_value

              # The grouping_key value whose summed quantity represents consumption (e.g.
              # 'download'). Charged at unit_amount.
              sig { returns(String) }
              attr_accessor :consumption_grouping_value

              # Event property used to partition the metric into consumption and allowance
              # quantities (e.g. 'event_name'). The metric is queried with this key and the two
              # values below select which partition is which.
              sig { returns(String) }
              attr_accessor :grouping_key

              # Per-unit price applied to gross consumption and to the allowance credit.
              sig { returns(String) }
              attr_accessor :unit_amount

              # Sub-line label for the credit row (e.g. 'Up to 3x free egress').
              sig { returns(T.nilable(String)) }
              attr_reader :allowance_display_name

              sig { params(allowance_display_name: String).void }
              attr_writer :allowance_display_name

              # Sub-line label for the gross consumption row (e.g. 'bytes gotten').
              sig { returns(T.nilable(String)) }
              attr_reader :consumption_display_name

              sig { params(consumption_display_name: String).void }
              attr_writer :consumption_display_name

              # Configuration for metered_allowance pricing
              sig do
                params(
                  allowance_grouping_value: String,
                  consumption_grouping_value: String,
                  grouping_key: String,
                  unit_amount: String,
                  allowance_display_name: String,
                  consumption_display_name: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The grouping_key value whose summed quantity represents the allowance for this
                # period (e.g. 'storage_snapshot' emitting 3 × avg storage). Capped at consumption
                # — credit can never exceed actual usage.
                allowance_grouping_value:,
                # The grouping_key value whose summed quantity represents consumption (e.g.
                # 'download'). Charged at unit_amount.
                consumption_grouping_value:,
                # Event property used to partition the metric into consumption and allowance
                # quantities (e.g. 'event_name'). The metric is queried with this key and the two
                # values below select which partition is which.
                grouping_key:,
                # Per-unit price applied to gross consumption and to the allowance credit.
                unit_amount:,
                # Sub-line label for the credit row (e.g. 'Up to 3x free egress').
                allowance_display_name: nil,
                # Sub-line label for the gross consumption row (e.g. 'bytes gotten').
                consumption_display_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    allowance_grouping_value: String,
                    consumption_grouping_value: String,
                    grouping_key: String,
                    unit_amount: String,
                    allowance_display_name: String,
                    consumption_display_name: String
                  }
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
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig
              )
            end
            attr_reader :percent_config

            sig do
              params(
                percent_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig::OrHash
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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                percent_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :percent
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::OrSymbol,
                  currency: String,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  percent_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence::TaggedSymbol
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig,
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
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # Configuration for event_output pricing
            sig do
              returns(
                Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig
              )
            end
            attr_reader :event_output_config

            sig do
              params(
                event_output_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig::OrHash
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

            # The ID of the license type to associate with this price.
            sig { returns(T.nilable(String)) }
            attr_accessor :license_type_id

            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig do
              params(
                cadence:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::OrSymbol,
                currency: String,
                event_output_config:
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig::OrHash,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              # The ID of the license type to associate with this price.
              license_type_id: nil,
              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              metadata: nil,
              # The pricing model type
              model_type: :event_output
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::OrSymbol,
                  currency: String,
                  event_output_config:
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig,
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
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration),
                  license_type_id: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence::TaggedSymbol
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
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig,
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
                Orb::SubscriptionPriceIntervalsParams::Add::Price::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionPriceIntervalsParams::AddAdjustment,
              Orb::Internal::AnyHash
            )
          end

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        sig { returns(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)) }
        attr_accessor :start_date

        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewPercentageDiscount,
                Orb::NewUsageDiscount,
                Orb::NewAmountDiscount,
                Orb::NewMinimum,
                Orb::NewMaximum
              )
            )
          )
        end
        attr_accessor :adjustment

        # The ID of the adjustment to add to the subscription. Adjustment IDs can be
        # re-used from existing subscriptions or plans, but adjustments associated with
        # coupon redemptions cannot be re-used.
        sig { returns(T.nilable(String)) }
        attr_accessor :adjustment_id

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_accessor :end_date

        sig do
          params(
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
            adjustment:
              T.nilable(
                T.any(
                  Orb::NewPercentageDiscount::OrHash,
                  Orb::NewUsageDiscount::OrHash,
                  Orb::NewAmountDiscount::OrHash,
                  Orb::NewMinimum::OrHash,
                  Orb::NewMaximum::OrHash
                )
              ),
            adjustment_id: T.nilable(String),
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          ).returns(T.attached_class)
        end
        def self.new(
          # The start date of the adjustment interval. This is the date that the adjustment
          # will start affecting prices on the subscription. The adjustment will apply to
          # invoice dates that overlap with this `start_date`. This `start_date` is treated
          # as inclusive for in-advance prices, and exclusive for in-arrears prices.
          start_date:,
          # The definition of a new adjustment to create and add to the subscription.
          adjustment: nil,
          # The ID of the adjustment to add to the subscription. Adjustment IDs can be
          # re-used from existing subscriptions or plans, but adjustments associated with
          # coupon redemptions cannot be re-used.
          adjustment_id: nil,
          # The end date of the adjustment interval. This is the date that the adjustment
          # will stop affecting prices on the subscription. The adjustment will apply to
          # invoice dates that overlap with this `end_date`.This `end_date` is treated as
          # exclusive for in-advance prices, and inclusive for in-arrears prices.
          end_date: nil
        )
        end

        sig do
          override.returns(
            {
              start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
              adjustment:
                T.nilable(
                  T.any(
                    Orb::NewPercentageDiscount,
                    Orb::NewUsageDiscount,
                    Orb::NewAmountDiscount,
                    Orb::NewMinimum,
                    Orb::NewMaximum
                  )
                ),
              adjustment_id: T.nilable(String),
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
            }
          )
        end
        def to_hash
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        module StartDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate::Variants
              ]
            )
          end
          def self.variants
          end
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
                Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        module EndDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class Edit < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionPriceIntervalsParams::Edit,
              Orb::Internal::AnyHash
            )
          end

        # The id of the price interval to edit.
        sig { returns(String) }
        attr_accessor :price_interval_id

        # The updated billing cycle day for this price interval. If not specified, the
        # billing cycle day will not be updated. Note that overlapping price intervals
        # must have the same billing cycle day.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_cycle_day

        # If true, an in-arrears price interval ending mid-cycle will defer billing the
        # final line item until the next scheduled invoice. If false, it will be billed on
        # its end date.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :can_defer_billing

        # The updated end date of this price interval. If not specified, the end date will
        # not be updated.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_accessor :end_date

        # An additional filter to apply to usage queries. This filter must be expressed as
        # a boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties). If
        # null, usage queries will not include any additional filter.
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # A list of fixed fee quantity transitions to use for this price interval. Note
        # that this list will overwrite all existing fixed fee quantity transitions on the
        # price interval.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition
              ]
            )
          )
        end
        attr_accessor :fixed_fee_quantity_transitions

        # Override values for parameterized billable metric variables. Keys are parameter
        # names, values are the override values (number or string).
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :metric_parameter_overrides

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_reader :start_date

        sig do
          params(
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)
          ).void
        end
        attr_writer :start_date

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
            price_interval_id: String,
            billing_cycle_day: T.nilable(Integer),
            can_defer_billing: T.nilable(T::Boolean),
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions:
              T.nilable(
                T::Array[
                  Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition::OrHash
                ]
              ),
            metric_parameter_overrides: T.nilable(T::Hash[Symbol, T.anything]),
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
            usage_customer_ids: T.nilable(T::Array[String])
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the price interval to edit.
          price_interval_id:,
          # The updated billing cycle day for this price interval. If not specified, the
          # billing cycle day will not be updated. Note that overlapping price intervals
          # must have the same billing cycle day.
          billing_cycle_day: nil,
          # If true, an in-arrears price interval ending mid-cycle will defer billing the
          # final line item until the next scheduled invoice. If false, it will be billed on
          # its end date.
          can_defer_billing: nil,
          # The updated end date of this price interval. If not specified, the end date will
          # not be updated.
          end_date: nil,
          # An additional filter to apply to usage queries. This filter must be expressed as
          # a boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties). If
          # null, usage queries will not include any additional filter.
          filter: nil,
          # A list of fixed fee quantity transitions to use for this price interval. Note
          # that this list will overwrite all existing fixed fee quantity transitions on the
          # price interval.
          fixed_fee_quantity_transitions: nil,
          # Override values for parameterized billable metric variables. Keys are parameter
          # names, values are the override values (number or string).
          metric_parameter_overrides: nil,
          # The updated start date of this price interval. If not specified, the start date
          # will not be updated.
          start_date: nil,
          # A list of customer IDs whose usage events will be aggregated and billed under
          # this subscription. By default, a subscription only considers usage events
          # associated with its attached customer's customer_id. When usage_customer_ids is
          # provided, the subscription includes usage events from the specified customers
          # only. Provided usage_customer_ids must be either the customer for this
          # subscription itself, or any of that customer's children.
          usage_customer_ids: nil
        )
        end

        sig do
          override.returns(
            {
              price_interval_id: String,
              billing_cycle_day: T.nilable(Integer),
              can_defer_billing: T.nilable(T::Boolean),
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
              filter: T.nilable(String),
              fixed_fee_quantity_transitions:
                T.nilable(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition
                  ]
                ),
              metric_parameter_overrides:
                T.nilable(T::Hash[Symbol, T.anything]),
              start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
        end
        def to_hash
        end

        # The updated end date of this price interval. If not specified, the end date will
        # not be updated.
        module EndDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Edit::EndDate::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition,
                Orb::Internal::AnyHash
              )
            end

          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          attr_accessor :effective_date

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          attr_accessor :quantity

          sig do
            params(effective_date: Time, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # The date that the fixed fee quantity transition should take effect.
            effective_date:,
            # The quantity of the fixed fee quantity transition.
            quantity:
          )
          end

          sig { override.returns({ effective_date: Time, quantity: Integer }) }
          def to_hash
          end
        end

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        module StartDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::Edit::StartDate::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class EditAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SubscriptionPriceIntervalsParams::EditAdjustment,
              Orb::Internal::AnyHash
            )
          end

        # The id of the adjustment interval to edit.
        sig { returns(String) }
        attr_accessor :adjustment_interval_id

        # The updated end date of this adjustment interval. If not specified, the end date
        # will not be updated.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_accessor :end_date

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        sig do
          returns(
            T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          )
        end
        attr_reader :start_date

        sig do
          params(
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)
          ).void
        end
        attr_writer :start_date

        sig do
          params(
            adjustment_interval_id: String,
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the adjustment interval to edit.
          adjustment_interval_id:,
          # The updated end date of this adjustment interval. If not specified, the end date
          # will not be updated.
          end_date: nil,
          # The updated start date of this adjustment interval. If not specified, the start
          # date will not be updated.
          start_date: nil
        )
        end

        sig do
          override.returns(
            {
              adjustment_interval_id: String,
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
              start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)
            }
          )
        end
        def to_hash
        end

        # The updated end date of this adjustment interval. If not specified, the end date
        # will not be updated.
        module EndDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::EditAdjustment::EndDate::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        module StartDate
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(Time, Orb::BillingCycleRelativeDate::TaggedSymbol)
            end

          sig do
            override.returns(
              T::Array[
                Orb::SubscriptionPriceIntervalsParams::EditAdjustment::StartDate::Variants
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
