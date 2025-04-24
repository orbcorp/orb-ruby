# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#price_intervals
    class SubscriptionPriceIntervalsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute add
      #   A list of price intervals to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>, nil]
      optional :add, -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add] }

      # @!attribute add_adjustments
      #   A list of adjustments to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment] }

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute edit
      #   A list of price intervals to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>, nil]
      optional :edit, -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Edit] }

      # @!attribute edit_adjustments
      #   A list of adjustments to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>, nil]
      optional :edit_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment] }

      # @!method initialize(add: nil, add_adjustments: nil, allow_invoice_credit_or_void: nil, edit: nil, edit_adjustments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionPriceIntervalsParams} for more details.
      #
      #   @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>] A list of price intervals to add to the subscription.
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>] A list of adjustments to add to the subscription.
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
      #   ...
      #
      #   @param edit [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>] A list of price intervals to edit on the subscription.
      #
      #   @param edit_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>] A list of adjustments to edit on the subscription.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Add < Orb::Internal::Type::BaseModel
        # @!attribute start_date
        #   The start date of the price interval. This is the date that the price will start
        #   billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::StartDate }

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice },
                 nil?: true

        # @!attribute discounts
        #   A list of discounts to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams>, nil]
        optional :discounts,
                 -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount] },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::EndDate }, nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition] },
                 nil?: true

        # @!attribute maximum_amount
        #   The maximum amount that will be billed for this price interval for a given
        #   billing period.
        #
        #   @return [Float, nil]
        optional :maximum_amount, Float, nil?: true

        # @!attribute minimum_amount
        #   The minimum amount that will be billed for this price interval for a given
        #   billing period.
        #
        #   @return [Float, nil]
        optional :minimum_amount, Float, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice, nil]
        optional :price, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(start_date:, allocation_price: nil, discounts: nil, end_date: nil, external_price_id: nil, filter: nil, fixed_fee_quantity_transitions: nil, maximum_amount: nil, minimum_amount: nil, price: nil, price_id: nil, usage_customer_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::Add} for more details.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the price interval. This is the date that the price will start
        #   ...
        #
        #   @param allocation_price [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams>, nil] A list of discounts to initialize on the price interval.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the price interval. This is the date that the price will stop bi
        #   ...
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #   ...
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @param maximum_amount [Float, nil] The maximum amount that will be billed for this price interval for a given billi
        #   ...
        #
        #   @param minimum_amount [Float, nil] The minimum amount that will be billed for this price interval for a given billi
        #   ...
        #
        #   @param price [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
        #   ...

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::Internal::Type::Boolean

          # @!method initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice} for more
          #   details.
          #
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   ...
          #
          #   @param expires_at_end_of_cadence [Boolean] Whether the allocated amount should expire at the end of the cadence or roll ove
          #   ...

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice#cadence
          module Cadence
            extend Orb::Internal::Type::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        module Discount
          extend Orb::Internal::Type::Union

          discriminator :discount_type

          variant :amount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams }

          variant :percentage,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams }

          variant :usage,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams }

          class AmountDiscountCreationParams < Orb::Internal::Type::BaseModel
            # @!attribute amount_discount
            #   Only available if discount_type is `amount`.
            #
            #   @return [Float]
            required :amount_discount, Float

            # @!attribute discount_type
            #
            #   @return [Symbol, :amount]
            required :discount_type, const: :amount

            # @!method initialize(amount_discount:, discount_type: :amount)
            #   @param amount_discount [Float] Only available if discount_type is `amount`.
            #
            #   @param discount_type [Symbol, :amount]
          end

          class PercentageDiscountCreationParams < Orb::Internal::Type::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :percentage]
            required :discount_type, const: :percentage

            # @!attribute percentage_discount
            #   Only available if discount_type is `percentage`. This is a number between 0
            #   and 1.
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!method initialize(percentage_discount:, discount_type: :percentage)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams}
            #   for more details.
            #
            #   @param percentage_discount [Float] Only available if discount_type is `percentage`. This is a number between 0 and
            #   ...
            #
            #   @param discount_type [Symbol, :percentage]
          end

          class UsageDiscountCreationParams < Orb::Internal::Type::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :usage]
            required :discount_type, const: :usage

            # @!attribute usage_discount
            #   Only available if discount_type is `usage`. Number of usage units that this
            #   discount is for.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!method initialize(usage_discount:, discount_type: :usage)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams}
            #   for more details.
            #
            #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
            #   ...
            #
            #   @param discount_type [Symbol, :usage]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams)]
        end

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          # @!attribute effective_date
          #   The date that the fixed fee quantity transition should take effect.
          #
          #   @return [Time]
          required :effective_date, Time

          # @!attribute quantity
          #   The quantity of the fixed fee quantity transition.
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!method initialize(effective_date:, quantity:)
          #   @param effective_date [Time] The date that the fixed fee quantity transition should take effect.
          #
          #   @param quantity [Integer] The quantity of the fixed fee quantity transition.
        end

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice }

          variant :matrix_with_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice }

          variant :tiered, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice }

          variant :bps, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice }

          variant :bulk, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice }

          variant :grouped_tiered,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice }

          variant :tiered_package_with_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice }

          class NewFloatingUnitPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit]
            required :model_type, const: :unit

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package]
            required :model_type, const: :package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice#package_config
            class PackageConfig < Orb::Internal::Type::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!method initialize(package_amount:, package_size:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
              #   ...
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingMatrixPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix]
            required :model_type, const: :matrix

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #   ...
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingMatrixWithAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_allocation_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_allocation]
            required :model_type, const: :matrix_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_allocation_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_allocation_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :matrix_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice#matrix_with_allocation_config
            class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
              # @!attribute allocation
              #   Allocation to be used to calculate the price
              #
              #   @return [Float]
              required :allocation, Float

              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              #   @param allocation [Float] Allocation to be used to calculate the price
              #
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #   ...
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered]
            required :model_type, const: :tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute first_unit
                #   Exclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Inclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
                #   @param first_unit [Float] Exclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_bps]
            required :model_type, const: :tiered_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   ...

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Exclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Inclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Per-event basis point rate
                #
                #   @param minimum_amount [String] Exclusive tier starting value
                #
                #   @param maximum_amount [String, nil] Inclusive tier ending value
                #
                #   @param per_unit_maximum [String, nil] Per unit maximum to charge
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bps]
            required :model_type, const: :bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice}
            #   for more details.
            #
            #   @param bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice#bps_config
            class BpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute bps
              #   Basis point take rate per event
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute per_unit_maximum
              #   Optional currency amount maximum to cap spend per event
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!method initialize(bps:, per_unit_maximum: nil)
              #   @param bps [Float] Basis point take rate per event
              #
              #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingBulkBpsPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_bps]
            required :model_type, const: :bulk_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice}
            #   for more details.
            #
            #   @param bulk_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier] }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie
              #   ...

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Basis points to rate on
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute maximum_amount
                #   Upper bound for tier
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   The maximum amount to charge for any one event
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Basis points to rate on
                #
                #   @param maximum_amount [String, nil] Upper bound for tier
                #
                #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk]
            required :model_type, const: :bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice}
            #   for more details.
            #
            #   @param bulk_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier] }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute maximum_units
                #   Upper bound for this tier
                #
                #   @return [Float, nil]
                optional :maximum_units, Float, nil?: true

                # @!method initialize(unit_amount:, maximum_units: nil)
                #   @param unit_amount [String] Amount per unit
                #
                #   @param maximum_units [Float, nil] Upper bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :threshold_total_amount]
            required :model_type, const: :threshold_total_amount

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute threshold_total_amount_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package]
            required :model_type, const: :tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingGroupedTieredPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered]
            required :model_type, const: :grouped_tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_tiered_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :grouped_tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingMaxGroupTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :max_group_tiered_package]
            required :model_type, const: :max_group_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredWithMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_minimum]
            required :model_type, const: :tiered_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingPackageWithAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package_with_allocation]
            required :model_type, const: :package_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_with_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredPackageWithMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package_with_minimum]
            required :model_type, const: :tiered_package_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_with_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered_package_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingUnitWithPercentPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_percent]
            required :model_type, const: :unit_with_percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_percent_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingTieredWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingUnitWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_proration]
            required :model_type, const: :unit_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingGroupedAllocationPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_allocation]
            required :model_type, const: :grouped_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingGroupedWithProratedMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_prorated_minimum]
            required :model_type, const: :grouped_with_prorated_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingGroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_metered_minimum]
            required :model_type, const: :grouped_with_metered_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingMatrixWithDisplayNamePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_display_name]
            required :model_type, const: :matrix_with_display_name

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingBulkWithProrationPrice < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_with_proration]
            required :model_type, const: :bulk_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingGroupedTieredPackagePrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered_package]
            required :model_type, const: :grouped_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_unit_pricing]
            required :model_type, const: :scalable_matrix_with_unit_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_unit_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
            required :model_type, const: :scalable_matrix_with_tiered_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_tiered_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class NewFloatingCumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :cumulative_grouped_bulk]
            required :model_type, const: :cumulative_grouped_bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #   ...
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #   ...
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #   ...
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #   ...
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #   ...
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #   ...
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice)]
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment }

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate },
                 nil?: true

        # @!method initialize(adjustment:, start_date:, end_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment} for more details.
        #
        #   @param adjustment [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the adjustment interval. This is the date that the adjustment
        #   ...
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the adjustment interval. This is the date that the adjustment wi
        #   ...

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum }

          variant :maximum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum }

          class NewPercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, percentage_discount:, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param percentage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #   ...
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class NewUsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param usage_discount [Float]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #   ...
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class NewAmountDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :amount_discount]
            required :adjustment_type, const: :amount_discount

            # @!attribute amount_discount
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #   ...
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class NewMinimum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #   ...
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class NewMaximum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum}
            #   for more details.
            #
            #   @param applies_to_price_ids [Array<String>] The set of price IDs to which this adjustment applies.
            #
            #   @param maximum_amount [String]
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #   ...
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum)]
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end

      class Edit < Orb::Internal::Type::BaseModel
        # @!attribute price_interval_id
        #   The id of the price interval to edit.
        #
        #   @return [String]
        required :price_interval_id, String

        # @!attribute billing_cycle_day
        #   The updated billing cycle day for this price interval. If not specified, the
        #   billing cycle day will not be updated. Note that overlapping price intervals
        #   must have the same billing cycle day.
        #
        #   @return [Integer, nil]
        optional :billing_cycle_day, Integer, nil?: true

        # @!attribute end_date
        #   The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Edit::EndDate }, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to use for this price interval. Note
        #   that this list will overwrite all existing fixed fee quantity transitions on the
        #   price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition] },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Edit::StartDate }

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(price_interval_id:, billing_cycle_day: nil, end_date: nil, filter: nil, fixed_fee_quantity_transitions: nil, start_date: nil, usage_customer_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::Edit} for more details.
        #
        #   @param price_interval_id [String] The id of the price interval to edit.
        #
        #   @param billing_cycle_day [Integer, nil] The updated billing cycle day for this price interval. If not specified, the bil
        #   ...
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this price interval. If not specified, the start date wi
        #   ...
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #   ...
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to use for this price interval. Note th
        #   ...
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this price interval. If not specified, the start date
        #   ...
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
        #   ...

        # The updated end date of this price interval. If not specified, the start date
        # will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Edit#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          # @!attribute effective_date
          #   The date that the fixed fee quantity transition should take effect.
          #
          #   @return [Time]
          required :effective_date, Time

          # @!attribute quantity
          #   The quantity of the fixed fee quantity transition.
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!method initialize(effective_date:, quantity:)
          #   @param effective_date [Time] The date that the fixed fee quantity transition should take effect.
          #
          #   @param quantity [Integer] The quantity of the fixed fee quantity transition.
        end

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Edit#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end

      class EditAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment_interval_id
        #   The id of the adjustment interval to edit.
        #
        #   @return [String]
        required :adjustment_interval_id, String

        # @!attribute end_date
        #   The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment::EndDate },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment::StartDate }

        # @!method initialize(adjustment_interval_id:, end_date: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment} for more
        #   details.
        #
        #   @param adjustment_interval_id [String] The id of the adjustment interval to edit.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this adjustment interval. If not specified, the start da
        #   ...
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this adjustment interval. If not specified, the start
        #   ...

        # The updated end date of this adjustment interval. If not specified, the start
        # date will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end
    end
  end
end
