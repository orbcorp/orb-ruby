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
      optional :add, -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add] }

      # @!attribute add_adjustments
      #   A list of adjustments to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment] }

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
      optional :edit, -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Edit] }

      # @!attribute edit_adjustments
      #   A list of adjustments to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>, nil]
      optional :edit_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::EditAdjustment] }

      # @!method initialize(add: nil, add_adjustments: nil, allow_invoice_credit_or_void: nil, edit: nil, edit_adjustments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionPriceIntervalsParams} for more details.
      #
      #   @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>] A list of price intervals to add to the subscription.
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>] A list of adjustments to add to the subscription.
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
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
        required :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::StartDate }

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::NewAllocationPrice, nil]
        optional :allocation_price, -> { Orb::NewAllocationPrice }, nil?: true

        # @!attribute discounts
        #   A list of discounts to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage>, nil]
        optional :discounts,
                 -> {
                   Orb::Internal::Type::ArrayOf[union: Orb::SubscriptionPriceIntervalsParams::Add::Discount]
                 },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::EndDate }, nil?: true

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
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]
                 },
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
        #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, nil]
        optional :price, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price }, nil?: true

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
        #
        #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage>, nil] A list of discounts to initialize on the price interval.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the price interval. This is the date that the price will stop bi
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @param maximum_amount [Float, nil] The maximum amount that will be billed for this price interval for a given billi
        #
        #   @param minimum_amount [Float, nil] The minimum amount that will be billed for this price interval for a given billi
        #
        #   @param price [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        module Discount
          extend Orb::Internal::Type::Union

          discriminator :discount_type

          variant :amount, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount }

          variant :percentage, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage }

          variant :usage, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage }

          class Amount < Orb::Internal::Type::BaseModel
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

          class Percentage < Orb::Internal::Type::BaseModel
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
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage} for
            #   more details.
            #
            #   @param percentage_discount [Float] Only available if discount_type is `percentage`. This is a number between 0 and
            #
            #   @param discount_type [Symbol, :percentage]
          end

          class Usage < Orb::Internal::Type::BaseModel
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
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage} for more
            #   details.
            #
            #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
            #
            #   @param discount_type [Symbol, :usage]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage)]
        end

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

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

          variant :unit, -> { Orb::NewFloatingUnitPrice }

          variant :package, -> { Orb::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::NewFloatingMatrixPrice }

          variant :matrix_with_allocation, -> { Orb::NewFloatingMatrixWithAllocationPrice }

          variant :tiered, -> { Orb::NewFloatingTieredPrice }

          variant :tiered_bps, -> { Orb::NewFloatingTieredBPSPrice }

          variant :bps, -> { Orb::NewFloatingBPSPrice }

          variant :bulk_bps, -> { Orb::NewFloatingBulkBPSPrice }

          variant :bulk, -> { Orb::NewFloatingBulkPrice }

          variant :threshold_total_amount, -> { Orb::NewFloatingThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewFloatingTieredPackagePrice }

          variant :grouped_tiered, -> { Orb::NewFloatingGroupedTieredPrice }

          variant :max_group_tiered_package, -> { Orb::NewFloatingMaxGroupTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewFloatingTieredWithMinimumPrice }

          variant :package_with_allocation, -> { Orb::NewFloatingPackageWithAllocationPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewFloatingTieredPackageWithMinimumPrice }

          variant :unit_with_percent, -> { Orb::NewFloatingUnitWithPercentPrice }

          variant :tiered_with_proration, -> { Orb::NewFloatingTieredWithProrationPrice }

          variant :unit_with_proration, -> { Orb::NewFloatingUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewFloatingGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewFloatingGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewFloatingGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name, -> { Orb::NewFloatingMatrixWithDisplayNamePrice }

          variant :bulk_with_proration, -> { Orb::NewFloatingBulkWithProrationPrice }

          variant :grouped_tiered_package, -> { Orb::NewFloatingGroupedTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing, -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewFloatingScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewFloatingCumulativeGroupedBulkPrice }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice)]
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
        required :adjustment, union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment }

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate },
                 nil?: true

        # @!method initialize(adjustment:, start_date:, end_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment} for more details.
        #
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the adjustment interval. This is the date that the adjustment
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the adjustment interval. This is the date that the adjustment wi

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount, -> { Orb::NewPercentageDiscount }

          variant :usage_discount, -> { Orb::NewUsageDiscount }

          variant :amount_discount, -> { Orb::NewAmountDiscount }

          variant :minimum, -> { Orb::NewMinimum }

          variant :maximum, -> { Orb::NewMaximum }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum)]
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

          variant enum: -> { Orb::BillingCycleRelativeDate }

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

          variant enum: -> { Orb::BillingCycleRelativeDate }

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
        #   The updated end date of this price interval. If not specified, the end date will
        #   not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Edit::EndDate }, nil?: true

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
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]
                 },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Edit::StartDate }

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
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this price interval. If not specified, the end date will
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to use for this price interval. Note th
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this price interval. If not specified, the start date
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th

        # The updated end date of this price interval. If not specified, the end date will
        # not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Edit#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

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

          variant enum: -> { Orb::BillingCycleRelativeDate }

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
        #   The updated end date of this adjustment interval. If not specified, the end date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::SubscriptionPriceIntervalsParams::EditAdjustment::EndDate },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::EditAdjustment::StartDate }

        # @!method initialize(adjustment_interval_id:, end_date: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment} for more
        #   details.
        #
        #   @param adjustment_interval_id [String] The id of the adjustment interval to edit.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this adjustment interval. If not specified, the end date
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this adjustment interval. If not specified, the start

        # The updated end date of this adjustment interval. If not specified, the end date
        # will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

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

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end
    end
  end
end
