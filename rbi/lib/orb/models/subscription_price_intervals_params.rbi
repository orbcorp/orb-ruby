# typed: strong

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])) }
      def add
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])
      end
      def add=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])) }
      def add_adjustments
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])
      end
      def add_adjustments=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def allow_invoice_credit_or_void=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])) }
      def edit
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])
          .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])
      end
      def edit=(_)
      end

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
          .void
      end
      def initialize(
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
        sig { returns(T.any(Time, Symbol)) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        sig { returns(T.nilable(Orb::Models::NewAllocationPriceModel)) }
        def allocation_price
        end

        sig do
          params(_: T.nilable(Orb::Models::NewAllocationPriceModel))
            .returns(T.nilable(Orb::Models::NewAllocationPriceModel))
        end
        def allocation_price=(_)
        end

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

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_price_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        sig { returns(T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel])) }
        def fixed_fee_quantity_transitions
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]))
            .returns(T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]))
        end
        def fixed_fee_quantity_transitions=(_)
        end

        sig { returns(T.nilable(Float)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(Float)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def minimum_amount=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
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
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                  Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
                )
              )
            )
        end
        def price=(_)
        end

        sig { returns(T.nilable(String)) }
        def price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def price_id=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        sig do
          params(
            start_date: T.any(Time, Symbol),
            allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
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
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]),
            maximum_amount: T.nilable(Float),
            minimum_amount: T.nilable(Float),
            price: T.nilable(
              T.any(
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
              )
            ),
            price_id: T.nilable(String),
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .void
        end
        def initialize(
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
                allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
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
                fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]),
                maximum_amount: T.nilable(Float),
                minimum_amount: T.nilable(Float),
                price: T.nilable(
                  T.any(
                    Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                    Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
                  )
                ),
                price_id: T.nilable(String),
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class Discount < Orb::Union
          abstract!

          class AmountDiscountCreationParams < Orb::BaseModel
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

            sig { params(amount_discount: Float, discount_type: Symbol).void }
            def initialize(amount_discount:, discount_type: :amount)
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

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { params(percentage_discount: Float, discount_type: Symbol).void }
            def initialize(percentage_discount:, discount_type: :percentage)
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

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig { params(usage_discount: Float, discount_type: Symbol).void }
            def initialize(usage_discount:, discount_type: :usage)
            end

            sig { override.returns({discount_type: Symbol, usage_discount: Float}) }
            def to_hash
            end
          end

          sig do
            override
              .returns(
                [[Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams], [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams], [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams]]
              )
          end
          private_class_method def self.variants
          end
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end

      class AddAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
              Orb::Models::NewAdjustmentModel::NewUsageDiscount,
              Orb::Models::NewAdjustmentModel::NewAmountDiscount,
              Orb::Models::NewAdjustmentModel::NewMinimum,
              Orb::Models::NewAdjustmentModel::NewMaximum
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
              Orb::Models::NewAdjustmentModel::NewUsageDiscount,
              Orb::Models::NewAdjustmentModel::NewAmountDiscount,
              Orb::Models::NewAdjustmentModel::NewMinimum,
              Orb::Models::NewAdjustmentModel::NewMaximum
            )
          )
            .returns(
              T.any(
                Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
                Orb::Models::NewAdjustmentModel::NewUsageDiscount,
                Orb::Models::NewAdjustmentModel::NewAmountDiscount,
                Orb::Models::NewAdjustmentModel::NewMinimum,
                Orb::Models::NewAdjustmentModel::NewMaximum
              )
            )
        end
        def adjustment=(_)
        end

        sig { returns(T.any(Time, Symbol)) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        sig do
          params(
            adjustment: T.any(
              Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
              Orb::Models::NewAdjustmentModel::NewUsageDiscount,
              Orb::Models::NewAdjustmentModel::NewAmountDiscount,
              Orb::Models::NewAdjustmentModel::NewMinimum,
              Orb::Models::NewAdjustmentModel::NewMaximum
            ),
            start_date: T.any(Time, Symbol),
            end_date: T.nilable(T.any(Time, Symbol))
          )
            .void
        end
        def initialize(adjustment:, start_date:, end_date: nil)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
                  Orb::Models::NewAdjustmentModel::NewUsageDiscount,
                  Orb::Models::NewAdjustmentModel::NewAmountDiscount,
                  Orb::Models::NewAdjustmentModel::NewMinimum,
                  Orb::Models::NewAdjustmentModel::NewMaximum
                ),
                start_date: T.any(Time, Symbol),
                end_date: T.nilable(T.any(Time, Symbol))
              }
            )
        end
        def to_hash
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end

      class Edit < Orb::BaseModel
        sig { returns(String) }
        def price_interval_id
        end

        sig { params(_: String).returns(String) }
        def price_interval_id=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def billing_cycle_day
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def billing_cycle_day=(_)
        end

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        sig { returns(T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel])) }
        def fixed_fee_quantity_transitions
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]))
            .returns(T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]))
        end
        def fixed_fee_quantity_transitions=(_)
        end

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def start_date
        end

        sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
        def start_date=(_)
        end

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
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]),
            start_date: T.any(Time, Symbol),
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .void
        end
        def initialize(
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
                fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel]),
                start_date: T.any(Time, Symbol),
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash
        end

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end

      class EditAdjustment < Orb::BaseModel
        sig { returns(String) }
        def adjustment_interval_id
        end

        sig { params(_: String).returns(String) }
        def adjustment_interval_id=(_)
        end

        sig { returns(T.nilable(T.any(Time, Symbol))) }
        def end_date
        end

        sig { params(_: T.nilable(T.any(Time, Symbol))).returns(T.nilable(T.any(Time, Symbol))) }
        def end_date=(_)
        end

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
            .void
        end
        def initialize(adjustment_interval_id:, end_date: nil, start_date: nil)
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

        class EndDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end

        class StartDate < Orb::Union
          abstract!

          sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
          private_class_method def self.variants
          end
        end
      end
    end
  end
end
