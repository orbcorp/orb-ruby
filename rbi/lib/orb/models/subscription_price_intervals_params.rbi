# typed: strong

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # A list of price intervals to add to the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add])) }
      attr_reader :add

      sig do
        params(add: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add, Orb::Internal::AnyHash)])
          .void
      end
      attr_writer :add

      # A list of adjustments to add to the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment])) }
      attr_reader :add_adjustments

      sig do
        params(
          add_adjustments: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment, Orb::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :add_adjustments

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # A list of price intervals to edit on the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit])) }
      attr_reader :edit

      sig do
        params(edit: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::Edit, Orb::Internal::AnyHash)])
          .void
      end
      attr_writer :edit

      # A list of adjustments to edit on the subscription.
      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment])) }
      attr_reader :edit_adjustments

      sig do
        params(
          edit_adjustments: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment, Orb::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :edit_adjustments

      sig do
        params(
          add: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add, Orb::Internal::AnyHash)],
          add_adjustments: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment, Orb::Internal::AnyHash)],
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          edit: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::Edit, Orb::Internal::AnyHash)],
          edit_adjustments: T::Array[T.any(Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment, Orb::Internal::AnyHash)],
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      class Add < Orb::Internal::Type::BaseModel
        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        sig { returns(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)) }
        attr_accessor :start_date

        # The definition of a new allocation price to create and add to the subscription.
        sig { returns(T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice)) }
        attr_reader :allocation_price

        sig do
          params(
            allocation_price: T.nilable(
              T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :allocation_price

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
        attr_accessor :discounts

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
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
            T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition])
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
            start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
            allocation_price: T.nilable(
              T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, Orb::Internal::AnyHash)
            ),
            discounts: T.nilable(
              T::Array[
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams,
                  Orb::Internal::AnyHash,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
                )
              ]
            ),
            end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
            external_price_id: T.nilable(String),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(
              T::Array[
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition,
                  Orb::Internal::AnyHash
                )
              ]
            ),
            maximum_amount: T.nilable(Float),
            minimum_amount: T.nilable(Float),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice,
                Orb::Internal::AnyHash,
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
        ); end
        sig do
          override
            .returns(
              {
                start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
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
                end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
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
        def to_hash; end

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        module StartDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end

        class AllocationPrice < Orb::Internal::Type::BaseModel
          # An amount of the currency to allocate to the customer at the specified cadence.
          sig { returns(String) }
          attr_accessor :amount

          # The cadence at which to allocate the amount to the customer.
          sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::OrSymbol) }
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
              cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::OrSymbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, cadence:, currency:, expires_at_end_of_cadence:); end

          sig do
            override
              .returns(
                {
                  amount: String,
                  cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::OrSymbol,
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
              T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ONE_TIME =
              T.let(
                :one_time,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol
              )
            ANNUAL =
              T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol)
            CUSTOM =
              T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Discount
          extend Orb::Internal::Type::Union

          class AmountDiscountCreationParams < Orb::Internal::Type::BaseModel
            # Only available if discount_type is `amount`.
            sig { returns(Float) }
            attr_accessor :amount_discount

            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig { params(amount_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(amount_discount:, discount_type: :amount); end

            sig { override.returns({amount_discount: Float, discount_type: Symbol}) }
            def to_hash; end
          end

          class PercentageDiscountCreationParams < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `percentage`. This is a number between 0
            # and 1.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { params(percentage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(percentage_discount:, discount_type: :percentage); end

            sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
            def to_hash; end
          end

          class UsageDiscountCreationParams < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for.
            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { params(usage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(usage_discount:, discount_type: :usage); end

            sig { override.returns({discount_type: Symbol, usage_discount: Float}) }
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams]
              )
          end
          def self.variants; end
        end

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        module EndDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          attr_accessor :effective_date

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, quantity:); end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash; end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          class NewFloatingUnitPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
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
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class UnitConfig < Orb::Internal::Type::BaseModel
              # Rate per unit of usage
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).returns(T.attached_class) }
              def self.new(unit_amount:); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingPackagePrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig) }
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
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
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence::TaggedSymbol]
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
              def self.new(package_amount:, package_size:); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingMatrixPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
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
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence::TaggedSymbol]
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
                  T::Array[
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
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
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(default_unit_amount:, dimensions:, matrix_values:); end

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
                def self.new(dimension_values:, unit_amount:); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingMatrixWithAllocationPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig
              )
            end
            attr_reader :matrix_with_allocation_config

            sig do
              params(
                matrix_with_allocation_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :matrix_with_allocation_config

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_allocation_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
              # Allocation to be used to calculate the price
              sig { returns(Float) }
              attr_accessor :allocation

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
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                  ]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(allocation:, default_unit_amount:, dimensions:, matrix_values:); end

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
                def self.new(dimension_values:, unit_amount:); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig) }
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
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
                T.nilable(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredConfig < Orb::Internal::Type::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:); end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier]
                    }
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
                def self.new(first_unit:, unit_amount:, last_unit: nil); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredBpsPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig
              )
            end
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end

            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              # tiers
              sig do
                returns(
                  T::Array[
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:); end

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
                def self.new(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil); end

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingBpsPrice < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::OrSymbol) }
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::OrSymbol,
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
            def to_hash; end

            class BpsConfig < Orb::Internal::Type::BaseModel
              # Basis point take rate per event
              sig { returns(Float) }
              attr_accessor :bps

              # Optional currency amount maximum to cap spend per event
              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
              def self.new(bps:, per_unit_maximum: nil); end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash; end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingBulkBpsPrice < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig) }
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::OrSymbol,
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
            def to_hash; end

            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              # tier based on total volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:); end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier]
                    }
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
                def self.new(bps:, maximum_amount: nil, per_unit_maximum: nil); end

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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingBulkPrice < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                bulk_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::OrSymbol,
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
            def to_hash; end

            class BulkConfig < Orb::Internal::Type::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(tiers:); end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier]
                    }
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
                def self.new(unit_amount:, maximum_units: nil); end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash; end
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredPackagePrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingGroupedTieredPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_tiered_config

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingMaxGroupTieredPackagePrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingPackageWithAllocationPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredPackageWithMinimumPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            # The name of the price.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_with_minimum_config

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingUnitWithPercentPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingTieredWithProrationPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingUnitWithProrationPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingGroupedAllocationPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::OrSymbol,
                currency: String,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingGroupedWithProratedMinimumPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
                currency: String,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
                currency: String,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingMatrixWithDisplayNamePrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingBulkWithProrationPrice < Orb::Internal::Type::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingGroupedTieredPackagePrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NewFloatingCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :cumulative_grouped_bulk_config

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
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

            sig do
              params(
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
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
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::OrSymbol,
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
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(duration:, duration_unit:); end

              sig do
                override
                  .returns(
                    {
                      duration: Integer,
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice]
              )
          end
          def self.variants; end
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
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
        attr_accessor :adjustment

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        sig { returns(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)) }
        attr_accessor :start_date

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
        attr_accessor :end_date

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum
            ),
            start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
            end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment:, start_date:, end_date: nil); end

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
                start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
                end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))
              }
            )
        end
        def to_hash; end

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Internal::Type::Union

          class NewPercentageDiscount < Orb::Internal::Type::BaseModel
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
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
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
            def to_hash; end
          end

          class NewUsageDiscount < Orb::Internal::Type::BaseModel
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
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
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
            def to_hash; end
          end

          class NewAmountDiscount < Orb::Internal::Type::BaseModel
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
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
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
            def to_hash; end
          end

          class NewMinimum < Orb::Internal::Type::BaseModel
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
              applies_to_price_ids:,
              item_id:,
              minimum_amount:,
              is_invoice_level: nil,
              adjustment_type: :minimum
            )
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
            def to_hash; end
          end

          class NewMaximum < Orb::Internal::Type::BaseModel
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
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
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
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
              )
          end
          def self.variants; end
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        module StartDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        module EndDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end
      end

      class Edit < Orb::Internal::Type::BaseModel
        # The id of the price interval to edit.
        sig { returns(String) }
        attr_accessor :price_interval_id

        # The updated billing cycle day for this price interval. If not specified, the
        # billing cycle day will not be updated. Note that overlapping price intervals
        # must have the same billing cycle day.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_cycle_day

        # The updated end date of this price interval. If not specified, the start date
        # will not be updated.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
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
            T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition])
          )
        end
        attr_accessor :fixed_fee_quantity_transitions

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
        attr_reader :start_date

        sig { params(start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)).void }
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
            end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(
              T::Array[
                T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition,
                  Orb::Internal::AnyHash
                )
              ]
            ),
            start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
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
        ); end
        sig do
          override
            .returns(
              {
                price_interval_id: String,
                billing_cycle_day: T.nilable(Integer),
                end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
                filter: T.nilable(String),
                fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]),
                start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash; end

        # The updated end date of this price interval. If not specified, the start date
        # will not be updated.
        module EndDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          # The date that the fixed fee quantity transition should take effect.
          sig { returns(Time) }
          attr_accessor :effective_date

          # The quantity of the fixed fee quantity transition.
          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, quantity:); end

          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash; end
        end

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        module StartDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end
      end

      class EditAdjustment < Orb::Internal::Type::BaseModel
        # The id of the adjustment interval to edit.
        sig { returns(String) }
        attr_accessor :adjustment_interval_id

        # The updated end date of this adjustment interval. If not specified, the start
        # date will not be updated.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
        attr_accessor :end_date

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        sig { returns(T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))) }
        attr_reader :start_date

        sig { params(start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)).void }
        attr_writer :start_date

        sig do
          params(
            adjustment_interval_id: String,
            end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
            start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)
          )
            .returns(T.attached_class)
        end
        def self.new(adjustment_interval_id:, end_date: nil, start_date: nil); end

        sig do
          override
            .returns(
              {
                adjustment_interval_id: String,
                end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)),
                start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol)
              }
            )
        end
        def to_hash; end

        # The updated end date of this adjustment interval. If not specified, the start
        # date will not be updated.
        module EndDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        module StartDate
          extend Orb::Internal::Type::Union

          sig { override.returns([Time, Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
          def self.variants; end
        end
      end
    end
  end
end
