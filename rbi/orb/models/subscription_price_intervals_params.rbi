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
          add: T::Array[Orb::SubscriptionPriceIntervalsParams::Add::OrHash],
          add_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::AddAdjustment::OrHash
            ],
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          edit: T::Array[Orb::SubscriptionPriceIntervalsParams::Edit::OrHash],
          edit_adjustments:
            T::Array[
              Orb::SubscriptionPriceIntervalsParams::EditAdjustment::OrHash
            ],
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of price intervals to add to the subscription.
        add: nil,
        # A list of adjustments to add to the subscription.
        add_adjustments: nil,
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
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
            add: T::Array[Orb::SubscriptionPriceIntervalsParams::Add],
            add_adjustments:
              T::Array[Orb::SubscriptionPriceIntervalsParams::AddAdjustment],
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
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

        # The minimum amount that will be billed for this price interval for a given
        # billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :minimum_amount

        # The definition of a new price to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingTieredBPSPrice,
                Orb::NewFloatingBPSPrice,
                Orb::NewFloatingBulkBPSPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice
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
            minimum_amount: T.nilable(Float),
            price:
              T.nilable(
                T.any(
                  Orb::NewFloatingUnitPrice::OrHash,
                  Orb::NewFloatingPackagePrice::OrHash,
                  Orb::NewFloatingMatrixPrice::OrHash,
                  Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPrice::OrHash,
                  Orb::NewFloatingTieredBPSPrice::OrHash,
                  Orb::NewFloatingBPSPrice::OrHash,
                  Orb::NewFloatingBulkBPSPrice::OrHash,
                  Orb::NewFloatingBulkPrice::OrHash,
                  Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
                  Orb::NewFloatingTieredPackagePrice::OrHash,
                  Orb::NewFloatingGroupedTieredPrice::OrHash,
                  Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewFloatingTieredWithMinimumPrice::OrHash,
                  Orb::NewFloatingPackageWithAllocationPrice::OrHash,
                  Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewFloatingUnitWithPercentPrice::OrHash,
                  Orb::NewFloatingTieredWithProrationPrice::OrHash,
                  Orb::NewFloatingUnitWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedAllocationPrice::OrHash,
                  Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewFloatingBulkWithProrationPrice::OrHash,
                  Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash
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
          # The minimum amount that will be billed for this price interval for a given
          # billing period.
          minimum_amount: nil,
          # The definition of a new price to create and add to the subscription.
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
              minimum_amount: T.nilable(Float),
              price:
                T.nilable(
                  T.any(
                    Orb::NewFloatingUnitPrice,
                    Orb::NewFloatingPackagePrice,
                    Orb::NewFloatingMatrixPrice,
                    Orb::NewFloatingMatrixWithAllocationPrice,
                    Orb::NewFloatingTieredPrice,
                    Orb::NewFloatingTieredBPSPrice,
                    Orb::NewFloatingBPSPrice,
                    Orb::NewFloatingBulkBPSPrice,
                    Orb::NewFloatingBulkPrice,
                    Orb::NewFloatingThresholdTotalAmountPrice,
                    Orb::NewFloatingTieredPackagePrice,
                    Orb::NewFloatingGroupedTieredPrice,
                    Orb::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::NewFloatingTieredWithMinimumPrice,
                    Orb::NewFloatingPackageWithAllocationPrice,
                    Orb::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::NewFloatingUnitWithPercentPrice,
                    Orb::NewFloatingTieredWithProrationPrice,
                    Orb::NewFloatingUnitWithProrationPrice,
                    Orb::NewFloatingGroupedAllocationPrice,
                    Orb::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::NewFloatingBulkWithProrationPrice,
                    Orb::NewFloatingGroupedTieredPackagePrice,
                    Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::NewFloatingCumulativeGroupedBulkPrice
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

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingTieredBPSPrice,
                Orb::NewFloatingBPSPrice,
                Orb::NewFloatingBulkBPSPrice,
                Orb::NewFloatingBulkPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice
              )
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

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        sig { returns(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)) }
        attr_accessor :start_date

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
            adjustment:
              T.any(
                Orb::NewPercentageDiscount::OrHash,
                Orb::NewUsageDiscount::OrHash,
                Orb::NewAmountDiscount::OrHash,
                Orb::NewMinimum::OrHash,
                Orb::NewMaximum::OrHash
              ),
            start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
          ).returns(T.attached_class)
        end
        def self.new(
          # The definition of a new adjustment to create and add to the subscription.
          adjustment:,
          # The start date of the adjustment interval. This is the date that the adjustment
          # will start affecting prices on the subscription. The adjustment will apply to
          # invoice dates that overlap with this `start_date`. This `start_date` is treated
          # as inclusive for in-advance prices, and exclusive for in-arrears prices.
          start_date:,
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
              adjustment:
                T.any(
                  Orb::NewPercentageDiscount,
                  Orb::NewUsageDiscount,
                  Orb::NewAmountDiscount,
                  Orb::NewMinimum,
                  Orb::NewMaximum
                ),
              start_date: T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol),
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol))
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
                Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Variants
              ]
            )
          end
          def self.variants
          end
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
            end_date:
              T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions:
              T.nilable(
                T::Array[
                  Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition::OrHash
                ]
              ),
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
              end_date:
                T.nilable(T.any(Time, Orb::BillingCycleRelativeDate::OrSymbol)),
              filter: T.nilable(String),
              fixed_fee_quantity_transitions:
                T.nilable(
                  T::Array[
                    Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition
                  ]
                ),
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
