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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                  Orb::Internal::AnyHash,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit,
                Orb::Internal::AnyHash,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk
              )
            ),
            price_id: T.nilable(String),
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .returns(T.attached_class)
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
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount,
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage,
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage
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
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk
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

          class Amount < Orb::Internal::Type::BaseModel
            # Only available if discount_type is `amount`.
            sig { returns(Float) }
            attr_accessor :amount_discount

            sig { returns(Symbol) }
            attr_accessor :discount_type

            sig { params(amount_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(
              # Only available if discount_type is `amount`.
              amount_discount:,
              discount_type: :amount
            ); end
            sig { override.returns({amount_discount: Float, discount_type: Symbol}) }
            def to_hash; end
          end

          class Percentage < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `percentage`. This is a number between 0
            # and 1.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { params(percentage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(
              # Only available if discount_type is `percentage`. This is a number between 0
              # and 1.
              percentage_discount:,
              discount_type: :percentage
            ); end
            sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
            def to_hash; end
          end

          class Usage < Orb::Internal::Type::BaseModel
            sig { returns(Symbol) }
            attr_accessor :discount_type

            # Only available if discount_type is `usage`. Number of usage units that this
            # discount is for.
            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { params(usage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
            def self.new(
              # Only available if discount_type is `usage`. Number of usage units that this
              # discount is for.
              usage_discount:,
              discount_type: :usage
            ); end
            sig { override.returns({discount_type: Symbol, usage_discount: Float}) }
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage]
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
          def self.new(
            # The date that the fixed fee quantity transition should take effect.
            effective_date:,
            # The quantity of the fixed fee quantity transition.
            quantity:
          ); end
          sig { override.returns({effective_date: Time, quantity: Integer}) }
          def to_hash; end
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Internal::Type::Union

          class Unit < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::OrSymbol) }
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

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig) }
            attr_reader :unit_config

            sig do
              params(
                unit_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig, Orb::Internal::AnyHash)
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig, Orb::Internal::AnyHash),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :unit
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence::TaggedSymbol])
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::OrSymbol) }
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

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig) }
            attr_reader :package_config

            sig do
              params(
                package_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::OrSymbol) }
            attr_accessor :cadence

            # An ISO 4217 currency string for which this price is billed in.
            sig { returns(String) }
            attr_accessor :currency

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig) }
            attr_reader :matrix_config

            sig do
              params(
                matrix_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :matrix
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence::TaggedSymbol]
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
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue]
                )
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue,
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
                      matrix_values: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class MatrixWithAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::OrSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig
              )
            end
            attr_reader :matrix_with_allocation_config

            sig do
              params(
                matrix_with_allocation_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_allocation_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                  Orb::Internal::AnyHash
                ),
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              # The id of the item the price will be associated with.
              item_id:,
              matrix_with_allocation_config:,
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
              model_type: :matrix_with_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    matrix_with_allocation_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence::TaggedSymbol]
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
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
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
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue,
                      Orb::Internal::AnyHash
                    )
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(
                # Allocation to be used to calculate the price
                allocation:,
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
                      allocation: Float,
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::OrSymbol) }
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

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig) }
            attr_reader :tiered_config

            sig do
              params(
                tiered_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :tiered
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredConfig < Orb::Internal::Type::BaseModel
              # Tiers for rating based on total usage quantities into the specified tier
              sig { returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier,
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
                    {tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier]}
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::OrSymbol) }
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

            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig) }
            attr_reader :tiered_bps_config

            sig do
              params(
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig,
                  Orb::Internal::AnyHash
                ),
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :tiered_bps
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              # tiers
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier]
                )
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier,
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
                      tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig) }
            attr_reader :bps_config

            sig do
              params(
                bps_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::OrSymbol) }
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration,
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
                bps_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig, Orb::Internal::AnyHash),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration,
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
              model_type: :bps
            ); end
            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration),
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(:semi_annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence::TaggedSymbol])
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig) }
            attr_reader :bulk_bps_config

            sig do
              params(
                bulk_bps_config: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :bulk_bps_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::OrSymbol) }
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig,
                  Orb::Internal::AnyHash
                ),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration,
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
              model_type: :bulk_bps
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              # tier based on total volume
              sig { returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier,
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
                    {tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier]}
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig) }
            attr_reader :bulk_config

            sig do
              params(
                bulk_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig, Orb::Internal::AnyHash)
              )
                .void
            end
            attr_writer :bulk_config

            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::OrSymbol) }
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration)
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration,
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
                T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration)
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration,
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
                bulk_config: T.any(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig, Orb::Internal::AnyHash),
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration,
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
              model_type: :bulk
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig,
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
            end
            def to_hash; end

            class BulkConfig < Orb::Internal::Type::BaseModel
              # Bulk tiers for rating based on total usage volume
              sig { returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier]) }
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[
                    T.any(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier,
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
                    {tiers: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier]}
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(:annual, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol)
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(:monthly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol)
              QUARTERLY =
                T.let(:quarterly, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol)
              ONE_TIME =
                T.let(:one_time, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol)
              CUSTOM =
                T.let(:custom, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol)

              sig do
                override
                  .returns(T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence::TaggedSymbol])
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :threshold_total_amount
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedTiered < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
              grouped_tiered_config:,
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
              model_type: :grouped_tiered
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::OrSymbol,
                    currency: String,
                    grouped_tiered_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :max_group_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :tiered_with_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :package_with_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              tiered_package_with_minimum_config:,
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
              model_type: :tiered_package_with_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
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
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :unit_with_percent
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :tiered_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :unit_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # The cadence to bill for this price on.
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::OrSymbol,
                currency: String,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :grouped_allocation
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::OrSymbol,
                    currency: String,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                currency: String,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :grouped_with_prorated_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
                    currency: String,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
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
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                currency: String,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :grouped_with_metered_minimum
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
                    currency: String,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
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
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :matrix_with_display_name
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
            sig { returns(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::OrSymbol) }
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration,
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
              model_type: :bulk_with_proration
            ); end
            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::OrSymbol,
                currency: String,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              # An ISO 4217 currency string for which this price is billed in.
              currency:,
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
              model_type: :grouped_tiered_package
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::OrSymbol,
                    currency: String,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :scalable_matrix_with_unit_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
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
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
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
              model_type: :scalable_matrix_with_tiered_pricing
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
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
                  T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::OrSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                )
              )
            end
            attr_reader :billing_cycle_configuration

            sig do
              params(
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                )
              )
            end
            attr_reader :invoicing_cycle_configuration

            sig do
              params(
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
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
                cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                conversion_rate: T.nilable(Float),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                    Orb::Internal::AnyHash
                  )
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                model_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # The cadence to bill for this price on.
              cadence:,
              cumulative_grouped_bulk_config:,
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
              model_type: :cumulative_grouped_bulk
            ); end
            sig do
              override
                .returns(
                  {
                    cadence: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    currency: String,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
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
                T.type_alias { T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol]
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # For custom cadence: specifies the duration of the billing period in days or
              # months.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
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
                  Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                )
              end
              attr_accessor :duration_unit

              # Within each billing cycle, specifies the cadence at which invoices are produced.
              # If unspecified, a single invoice is produced per billing cycle.
              sig do
                params(
                  duration: Integer,
                  duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
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
                      duration_unit: Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
                    }
                  )
              end
              def to_hash; end

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :day,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :month,
                    Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
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
                [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk]
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
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum
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
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum,
              Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum
            ),
            start_date: T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol),
            end_date: T.nilable(T.any(Time, Orb::Models::BillingCycleRelativeDate::OrSymbol))
          )
            .returns(T.attached_class)
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
        ); end
        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum,
                  Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum
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
                [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum]
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
          # The id of the price interval to edit.
          price_interval_id:,
          # The updated billing cycle day for this price interval. If not specified, the
          # billing cycle day will not be updated. Note that overlapping price intervals
          # must have the same billing cycle day.
          billing_cycle_day: nil,
          # The updated end date of this price interval. If not specified, the start date
          # will not be updated.
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
          def self.new(
            # The date that the fixed fee quantity transition should take effect.
            effective_date:,
            # The quantity of the fixed fee quantity transition.
            quantity:
          ); end
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
        def self.new(
          # The id of the adjustment interval to edit.
          adjustment_interval_id:,
          # The updated end date of this adjustment interval. If not specified, the start
          # date will not be updated.
          end_date: nil,
          # The updated start date of this adjustment interval. If not specified, the start
          # date will not be updated.
          start_date: nil
        ); end
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
