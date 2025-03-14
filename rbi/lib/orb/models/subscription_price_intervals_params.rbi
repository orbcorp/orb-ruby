# typed: strong

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # A list of price intervals to add to the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])) }
      def add
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])
      end
      def add=(_)
      end

      # A list of adjustments to add to the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])) }
      def add_adjustments
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])
      end
      def add_adjustments=(_)
      end

      # If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

      # A list of price intervals to edit on the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])) }
      def edit
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])
      end
      def edit=(_)
      end

      # A list of adjustments to edit on the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment])) }
      def edit_adjustments
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment])
      end
      def edit_adjustments=(_)
      end

      sig do
        params(
          add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
          add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
          edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        add: nil,
        add_adjustments: nil,
        allow_invoice_credit_or_void: nil,
        edit: nil,
        edit_adjustments: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
              add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
              allow_invoice_credit_or_void: T.nilable(T::Boolean),
              edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
              edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Add < Orb::BaseModel
        # The start date of the price interval. This is the date that the price will start
        #   billing on the subscription.
        sig { returns(T.any(Time, Symbol)) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice)) }
        def allocation_price
        end

        sig do
          params(_: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice))
            .returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice))
        end
        def allocation_price=(_)
        end

        # A list of discounts to initialize on the price interval.
        sig do
          returns(
            T.nilable(
              T::Array[
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
              )
              ]
            )
          )
        end
        def discounts
        end

        sig do
          params(
            _: T.nilable(
              T::Array[
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
              )
              ]
            )
          )
            .returns(
              T.nilable(
                T::Array[
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
                )
                ]
              )
            )
        end
        def discounts=(_)
        end

        # The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        # The external price id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        def external_price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_price_id=(_)
        end

        # An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        # A list of fixed fee quantity transitions to initialize on the price interval.
        sig do
          returns(
            T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition])
          )
        end
        def fixed_fee_quantity_transitions
        end

        sig do
          params(
            _: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition])
          )
            .returns(
              T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition])
            )
        end
        def fixed_fee_quantity_transitions=(_)
        end

        # The maximum amount that will be billed for this price interval for a given
        #   billing period.
        sig { returns(T.nilable(Float)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def maximum_amount=(_)
        end

        # The minimum amount that will be billed for this price interval for a given
        #   billing period.
        sig { returns(T.nilable(Float)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def minimum_amount=(_)
        end

        # The definition of a new price to create and add to the subscription.
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
              )
            )
          )
        end
        def price
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
                )
              )
            )
        end
        def price=(_)
        end

        # The id of the price to add to the subscription.
        sig { returns(T.nilable(String)) }
        def price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def price_id=(_)
        end

        # A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        sig do
          params(
            start_date: T.any(Time, Symbol),
            allocation_price: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice),
            discounts: T.nilable(
              T::Array[
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
              )
              ]
            ),
            end_date: T.nilable(T.any(Time, Symbol)),
            external_price_id: T.nilable(String),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]),
            maximum_amount: T.nilable(Float),
            minimum_amount: T.nilable(Float),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
              )
            ),
            price_id: T.nilable(String),
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .returns(T.attached_class)
        end
        def self.new(
          start_date:,
          allocation_price: nil,
          discounts: nil,
          end_date: nil,
          external_price_id: nil,
          filter: nil,
          fixed_fee_quantity_transitions: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          price: nil,
          price_id: nil,
          usage_customer_ids: nil
        )
        end

        sig do
          override
            .returns(
              {
                start_date: T.any(Time, Symbol),
                allocation_price: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice),
                discounts: T.nilable(
                  T::Array[
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
                  )
                  ]
                ),
                end_date: T.nilable(T.any(Time, Symbol)),
                external_price_id: T.nilable(String),
                filter: T.nilable(String),
                fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]),
                maximum_amount: T.nilable(Float),
                minimum_amount: T.nilable(Float),
                price: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice
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
        #   billing on the subscription.
        class StartDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end

        class AllocationPrice < Orb::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          # An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          # Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          sig { returns(T::Boolean) }
          def expires_at_end_of_cadence
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def expires_at_end_of_cadence=(_)
          end

          # The definition of a new allocation price to create and add to the subscription.
          sig do
            params(amount: String, cadence: Symbol, currency: String, expires_at_end_of_cadence: T::Boolean)
              .returns(T.attached_class)
          end
          def self.new(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override
              .returns({
                         amount: String,
                         cadence: Symbol,
                         currency: String,
                         expires_at_end_of_cadence: T::Boolean
                       })
          end
          def to_hash
          end

          # The cadence at which to allocate the amount to the customer.
          class Cadence < Orb::Enum
            abstract!

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Discount < Orb::Union
          abstract!

          class AmountDiscountCreationParams < Orb::BaseModel
            # Only available if discount_type is `amount`.
            sig { returns(Float) }
            def amount_discount
            end

            sig { params(_: Float).returns(Float) }
            def amount_discount=(_)
            end

            sig { returns(Symbol) }
            def discount_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def discount_type=(_)
            end

            sig { params(amount_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(amount_discount:, discount_type: :amount)
            end

            sig { override.returns({amount_discount: Float, discount_type: Symbol}) }
            def to_hash
            end
          end

          class PercentageDiscountCreationParams < Orb::BaseModel
            sig { returns(Symbol) }
            def discount_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def discount_type=(_)
            end

            # Only available if discount_type is `percentage`. This is a number between 0
            #   and 1.
            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { params(percentage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(percentage_discount:, discount_type: :percentage)
            end

            sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
            def to_hash
            end
          end

          class UsageDiscountCreationParams < Orb::BaseModel
            sig { returns(Symbol) }
            def discount_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def discount_type=(_)
            end

            # Only available if discount_type is `usage`. Number of usage units that this
            #   discount is for.
            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig { params(usage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(usage_discount:, discount_type: :usage)
            end

            sig { override.returns({discount_type: Symbol, usage_discount: Float}) }
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams]
                )
            end
            def variants
            end
          end
        end

        # The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        class EndDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          def effective_date
          end

          sig { params(_: Time).returns(Time) }
          def effective_date=(_)
          end

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          def quantity
          end

          sig { params(_: Integer).returns(Integer) }
          def quantity=(_)
          end

          sig { params(effective_date: Time, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, quantity:)
          end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash
          end
        end

        # The definition of a new price to create and add to the subscription.
        class Price < Orb::Union
          abstract!

          class NewFloatingUnitPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig) }
            def unit_config
            end

            sig do
              params(_: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig)
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig)
            end
            def unit_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class UnitConfig < Orb::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig) }
            def package_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig
              )
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig)
            end
            def package_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class PackageConfig < Orb::BaseModel
              # A currency amount to rate usage by
              sig { returns(String) }
              def package_amount
              end

              sig { params(_: String).returns(String) }
              def package_amount=(_)
              end

              # An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              sig { returns(Integer) }
              def package_size
              end

              sig { params(_: Integer).returns(Integer) }
              def package_size=(_)
              end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingMatrixPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig) }
            def matrix_config
            end

            sig do
              params(_: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig)
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig)
            end
            def matrix_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class MatrixConfig < Orb::BaseModel
              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              def default_unit_amount
              end

              sig { params(_: String).returns(String) }
              def default_unit_amount=(_)
              end

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              def dimensions
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimensions=(_)
              end

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
              end
              def matrix_values
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
                    ]
                  )
              end
              def matrix_values=(_)
              end

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
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
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
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
                def dimension_values
                end

                sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
                def dimension_values=(_)
                end

                # Unit price for the specified dimension_values
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingMatrixWithAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig
              )
            end
            def matrix_with_allocation_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig
              )
                .returns(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig
                )
            end
            def matrix_with_allocation_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_with_allocation_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              matrix_with_allocation_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix_with_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    matrix_with_allocation_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class MatrixWithAllocationConfig < Orb::BaseModel
              # Allocation to be used to calculate the price
              sig { returns(Float) }
              def allocation
              end

              sig { params(_: Float).returns(Float) }
              def allocation=(_)
              end

              # Default per unit rate for any usage not bucketed into a specified matrix_value
              sig { returns(String) }
              def default_unit_amount
              end

              sig { params(_: String).returns(String) }
              def default_unit_amount=(_)
              end

              # One or two event property values to evaluate matrix groups by
              sig { returns(T::Array[T.nilable(String)]) }
              def dimensions
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimensions=(_)
              end

              # Matrix values for specified matrix grouping keys
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                  ]
                )
              end
              def matrix_values
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                    ]
                  )
              end
              def matrix_values=(_)
              end

              sig do
                params(
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override
                  .returns(
                    {
                      allocation: Float,
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
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
                def dimension_values
                end

                sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
                def dimension_values=(_)
                end

                # Unit price for the specified dimension_values
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig) }
            def tiered_config
            end

            sig do
              params(_: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig)
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig)
            end
            def tiered_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredConfig < Orb::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Inclusive tier starting value
                sig { returns(Float) }
                def first_unit
                end

                sig { params(_: Float).returns(Float) }
                def first_unit=(_)
                end

                # Amount per unit
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                # Exclusive tier ending value. If null, this is treated as the last tier
                sig { returns(T.nilable(Float)) }
                def last_unit
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def last_unit=(_)
                end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredBpsPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig
              )
            end
            def tiered_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig
              )
                .returns(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig
                )
            end
            def tiered_bps_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                    ]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
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
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Per-event basis point rate
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                # Inclusive tier starting value
                sig { returns(String) }
                def minimum_amount
                end

                sig { params(_: String).returns(String) }
                def minimum_amount=(_)
                end

                # Exclusive tier ending value
                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                # Per unit maximum to charge
                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

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
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig) }
            def bps_config
            end

            sig do
              params(_: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig)
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig)
            end
            def bps_config=(_)
            end

            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bps_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              def bps
              end

              sig { params(_: Float).returns(Float) }
              def bps=(_)
              end

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              def per_unit_maximum
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_maximum=(_)
              end

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
              end
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingBulkBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig) }
            def bulk_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig
              )
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig)
            end
            def bulk_bps_config=(_)
            end

            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_bps_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk_bps
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Basis points to rate on
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                # Upper bound for tier
                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                # The maximum amount to charge for any one event
                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

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
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingBulkPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig) }
            def bulk_config
            end

            sig do
              params(_: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig)
                .returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig)
            end
            def bulk_config=(_)
            end

            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                # Amount per unit
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                # Upper bound for this tier
                sig { returns(T.nilable(Float)) }
                def maximum_units
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def maximum_units=(_)
                end

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
                def self.new(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
              end
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingThresholdTotalAmountPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :threshold_total_amount
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingGroupedTieredPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_config=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              grouped_tiered_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_tiered
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    grouped_tiered_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingMaxGroupTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              max_group_tiered_package_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredWithMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_with_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingPackageWithAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :package_with_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredPackageWithMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_with_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_with_minimum_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_package_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_package_with_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingUnitWithPercentPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit_with_percent
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingTieredWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :tiered_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingUnitWithProrationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :unit_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingGroupedAllocationPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_allocation
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingGroupedWithProratedMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_with_prorated_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              grouped_with_metered_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingMatrixWithDisplayNamePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              matrix_with_display_name_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config=(_)
            end

            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              bulk_with_proration_config:,
              cadence:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :bulk_with_proration
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingGroupedTieredPackagePrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              grouped_tiered_package_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              currency:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewFloatingCumulativeGroupedBulkPrice < Orb::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config=(_)
            end

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            # The id of the item the price will be associated with.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            # The name of the price.
            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            # The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            # If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            # For custom cadence: specifies the duration of the billing period in days or
            #   months.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            # The per unit conversion rate of the price currency to the invoicing currency.
            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            # An alias for the price.
            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            # If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            # The property used to group this price on an invoice
            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            # Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            # User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig do
              params(
                cadence: Symbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              cadence:,
              cumulative_grouped_bulk_config:,
              currency:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash
            end

            # The cadence to bill for this price on.
            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # For custom cadence: specifies the duration of the billing period in days or
              #   months.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # The duration of the billing period.
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              # The unit of billing period duration.
              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
              def self.new(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              # The unit of billing period duration.
              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice]
                )
            end
            def variants
            end
          end
        end
      end

      class AddAdjustment < Orb::BaseModel
        # The definition of a new adjustment to create and add to the subscription.
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
            .returns(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
              )
            )
        end
        def adjustment=(_)
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        sig { returns(T.any(Time, Symbol)) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            ),
            start_date: T.any(Time, Symbol),
            end_date: T.nilable(T.any(Time, Symbol))
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment:, start_date:, end_date: nil)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
                ),
                start_date: T.any(Time, Symbol),
                end_date: T.nilable(T.any(Time, Symbol))
              }
            )
        end
        def to_hash
        end

        # The definition of a new adjustment to create and add to the subscription.
        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

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
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

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
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

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
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

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
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            # The set of price IDs to which this adjustment applies.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            # When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

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

          class << self
            sig do
              override
                .returns(
                  [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
                )
            end
            def variants
            end
          end
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        class StartDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        class EndDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end
      end

      class Edit < Orb::BaseModel
        # The id of the price interval to edit.
        sig { returns(String) }
        def price_interval_id
        end

        sig { params(_: String).returns(String) }
        def price_interval_id=(_)
        end

        # The updated billing cycle day for this price interval. If not specified, the
        #   billing cycle day will not be updated. Note that overlapping price intervals
        #   must have the same billing cycle day.
        sig { returns(T.nilable(Integer)) }
        def billing_cycle_day
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def billing_cycle_day=(_)
        end

        # The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        # An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        # A list of fixed fee quantity transitions to use for this price interval. Note
        #   that this list will overwrite all existing fixed fee quantity transitions on the
        #   price interval.
        sig do
          returns(
            T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition])
          )
        end
        def fixed_fee_quantity_transitions
        end

        sig do
          params(
            _: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition])
          )
            .returns(
              T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition])
            )
        end
        def fixed_fee_quantity_transitions=(_)
        end

        # The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        # A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        sig do
          params(
            price_interval_id: String,
            billing_cycle_day: T.nilable(Integer),
            end_date: T.nilable(T.any(Time, Symbol)),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]),
            start_date: T.any(Time, Symbol),
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .returns(T.attached_class)
        end
        def self.new(
          price_interval_id:,
          billing_cycle_day: nil,
          end_date: nil,
          filter: nil,
          fixed_fee_quantity_transitions: nil,
          start_date: nil,
          usage_customer_ids: nil
        )
        end

        sig do
          override
            .returns(
              {
                price_interval_id: String,
                billing_cycle_day: T.nilable(Integer),
                end_date: T.nilable(T.any(Time, Symbol)),
                filter: T.nilable(String),
                fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]),
                start_date: T.any(Time, Symbol),
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash
        end

        # The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        class EndDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          def effective_date
          end

          sig { params(_: Time).returns(Time) }
          def effective_date=(_)
          end

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          def quantity
          end

          sig { params(_: Integer).returns(Integer) }
          def quantity=(_)
          end

          sig { params(effective_date: Time, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, quantity:)
          end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash
          end
        end

        # The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        class StartDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end
      end

      class EditAdjustment < Orb::BaseModel
        # The id of the adjustment interval to edit.
        sig { returns(String) }
        def adjustment_interval_id
        end

        sig { params(_: String).returns(String) }
        def adjustment_interval_id=(_)
        end

        # The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        # The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        sig do
          params(
            adjustment_interval_id: String,
            end_date: T.nilable(T.any(Time, Symbol)),
            start_date: T.any(Time, Symbol)
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment_interval_id:, end_date: nil, start_date: nil)
        end

        sig do
          override
            .returns(
              {
                adjustment_interval_id: String,
                end_date: T.nilable(T.any(Time, Symbol)),
                start_date: T.any(Time, Symbol)
              }
            )
        end
        def to_hash
        end

        # The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        class EndDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end

        # The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        class StartDate < Orb::Union
          abstract!

          class << self
            sig { override.returns([Time, Symbol]) }
            def variants
            end
          end
        end
      end
    end
  end
end
