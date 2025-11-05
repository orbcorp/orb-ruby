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

      # @!attribute can_defer_billing
      #   If true, ending an in-arrears price interval mid-cycle will defer billing the
      #   final line itemuntil the next scheduled invoice. If false, it will be billed on
      #   its end date. If not provided, behaviorwill follow account default.
      #
      #   @return [Boolean, nil]
      optional :can_defer_billing, Orb::Internal::Type::Boolean, nil?: true

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

      # @!method initialize(add: nil, add_adjustments: nil, allow_invoice_credit_or_void: nil, can_defer_billing: nil, edit: nil, edit_adjustments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionPriceIntervalsParams} for more details.
      #
      #   @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>] A list of price intervals to add to the subscription.
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>] A list of adjustments to add to the subscription.
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
      #
      #   @param can_defer_billing [Boolean, nil] If true, ending an in-arrears price interval mid-cycle will defer billing the fi
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
        #   New floating price request body params.
        #
        #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput, nil]
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
        #   @param price [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput, nil] New floating price request body params.
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

        # New floating price request body params.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewFloatingUnitPrice }

          variant :tiered, -> { Orb::NewFloatingTieredPrice }

          variant :bulk, -> { Orb::NewFloatingBulkPrice }

          variant :bulk_with_filters, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters }

          variant :package, -> { Orb::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::NewFloatingMatrixPrice }

          variant :threshold_total_amount, -> { Orb::NewFloatingThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewFloatingTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewFloatingTieredWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewFloatingGroupedTieredPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewFloatingTieredPackageWithMinimumPrice }

          variant :package_with_allocation, -> { Orb::NewFloatingPackageWithAllocationPrice }

          variant :unit_with_percent, -> { Orb::NewFloatingUnitWithPercentPrice }

          variant :matrix_with_allocation, -> { Orb::NewFloatingMatrixWithAllocationPrice }

          variant :tiered_with_proration, -> { Orb::NewFloatingTieredWithProrationPrice }

          variant :unit_with_proration, -> { Orb::NewFloatingUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewFloatingGroupedAllocationPrice }

          variant :bulk_with_proration, -> { Orb::NewFloatingBulkWithProrationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewFloatingGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewFloatingGroupedWithMeteredMinimumPrice }

          variant :grouped_with_min_max_thresholds,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds }

          variant :matrix_with_display_name, -> { Orb::NewFloatingMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewFloatingGroupedTieredPackagePrice }

          variant :max_group_tiered_package, -> { Orb::NewFloatingMaxGroupTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing, -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewFloatingScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewFloatingCumulativeGroupedBulkPrice }

          variant :minimum, -> { Orb::NewFloatingMinimumCompositePrice }

          variant :percent, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent }

          variant :event_output, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput }

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_filters_config
            #   Configuration for bulk_with_filters pricing
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig]
            required :bulk_with_filters_config,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence }

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
            #   The pricing model type
            #
            #   @return [Symbol, :bulk_with_filters]
            required :model_type, const: :bulk_with_filters

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_filters_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_filters)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters} for
            #   more details.
            #
            #   @param bulk_with_filters_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_with_filters] The pricing model type

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters#bulk_with_filters_config
            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              # @!attribute filters
              #   Property filters to apply (all must match)
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter] }

              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier] }

              # @!method initialize(filters:, tiers:)
              #   Configuration for bulk_with_filters pricing
              #
              #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
              #
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute property_key
                #   Event property key to filter on
                #
                #   @return [String]
                required :property_key, String

                # @!attribute property_value
                #   Event property value to match
                #
                #   @return [String]
                required :property_value, String

                # @!method initialize(property_key:, property_value:)
                #   Configuration for a single property filter
                #
                #   @param property_key [String] Event property key to filter on
                #
                #   @param property_value [String] Event property value to match
              end

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute tier_lower_bound
                #   The lower bound for this tier
                #
                #   @return [String, nil]
                optional :tier_lower_bound, String, nil?: true

                # @!method initialize(unit_amount:, tier_lower_bound: nil)
                #   Configuration for a single bulk pricing tier
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param tier_lower_bound [String, nil] The lower bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters#cadence
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
          end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_min_max_thresholds_config
            #   Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
            required :grouped_with_min_max_thresholds_config,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :grouped_with_min_max_thresholds]
            required :model_type, const: :grouped_with_min_max_thresholds

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_min_max_thresholds)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_min_max_thresholds_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              # @!attribute grouping_key
              #   The event property used to group before applying thresholds
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute maximum_charge
              #   The maximum amount to charge each group
              #
              #   @return [String]
              required :maximum_charge, String

              # @!attribute minimum_charge
              #   The minimum amount to charge each group, regardless of usage
              #
              #   @return [String]
              required :minimum_charge, String

              # @!attribute per_unit_rate
              #   The base price charged per group
              #
              #   @return [String]
              required :per_unit_rate, String

              # @!method initialize(grouping_key:, maximum_charge:, minimum_charge:, per_unit_rate:)
              #   Configuration for grouped_with_min_max_thresholds pricing
              #
              #   @param grouping_key [String] The event property used to group before applying thresholds
              #
              #   @param maximum_charge [String] The maximum amount to charge each group
              #
              #   @param minimum_charge [String] The minimum amount to charge each group, regardless of usage
              #
              #   @param per_unit_rate [String] The base price charged per group
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence }

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
            #   The pricing model type
            #
            #   @return [Symbol, :percent]
            required :model_type, const: :percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute percent_config
            #   Configuration for percent pricing
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig]
            required :percent_config, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig }

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Percent::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param percent_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent::PercentConfig] Configuration for percent pricing
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :percent] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent#percent_config
            class PercentConfig < Orb::Internal::Type::BaseModel
              # @!attribute percent
              #   What percent of the component subtotals to charge
              #
              #   @return [Float]
              required :percent, Float

              # @!method initialize(percent:)
              #   Configuration for percent pricing
              #
              #   @param percent [Float] What percent of the component subtotals to charge
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute event_output_config
            #   Configuration for event_output pricing
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig]
            required :event_output_config,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :event_output]
            required :model_type, const: :event_output

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute conversion_rate_config
            #   The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
            optional :conversion_rate_config,
                     union: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::ConversionRateConfig
                     },
                     nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::NewDimensionalPriceConfiguration
                     },
                     nil?: true

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
            #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, event_output_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :event_output)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param event_output_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig] Configuration for event_output pricing
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :event_output] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput#event_output_config
            class EventOutputConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_rating_key
              #   The key in the event data to extract the unit rate from.
              #
              #   @return [String]
              required :unit_rating_key, String

              # @!attribute default_unit_rate
              #   If provided, this amount will be used as the unit rate when an event does not
              #   have a value for the `unit_rating_key`. If not provided, events missing a unit
              #   rate will be ignored.
              #
              #   @return [String, nil]
              optional :default_unit_rate, String, nil?: true

              # @!attribute grouping_key
              #   An optional key in the event data to group by (e.g., event ID). All events will
              #   also be grouped by their unit rate.
              #
              #   @return [String, nil]
              optional :grouping_key, String, nil?: true

              # @!method initialize(unit_rating_key:, default_unit_rate: nil, grouping_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput::EventOutputConfig}
              #   for more details.
              #
              #   Configuration for event_output pricing
              #
              #   @param unit_rating_key [String] The key in the event data to extract the unit rate from.
              #
              #   @param default_unit_rate [String, nil] If provided, this amount will be used as the unit rate when an event does not ha
              #
              #   @param grouping_key [String, nil] An optional key in the event data to group by (e.g., event ID). All events will
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Percent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::EventOutput)]
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, nil]
        optional :adjustment,
                 union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment },
                 nil?: true

        # @!attribute adjustment_id
        #   The ID of the adjustment to add to the subscription. Adjustment IDs can be
        #   re-used from existing subscriptions or plans, but adjustments associated with
        #   coupon redemptions cannot be re-used.
        #
        #   @return [String, nil]
        optional :adjustment_id, String, nil?: true

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

        # @!method initialize(start_date:, adjustment: nil, adjustment_id: nil, end_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment} for more details.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the adjustment interval. This is the date that the adjustment
        #
        #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum, nil] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param adjustment_id [String, nil] The ID of the adjustment to add to the subscription. Adjustment IDs can be re-us
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the adjustment interval. This is the date that the adjustment wi

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

        # @!attribute can_defer_billing
        #   If true, ending an in-arrears price interval mid-cycle will defer billing the
        #   final line itemuntil the next scheduled invoice. If false, it will be billed on
        #   its end date. If not provided, behaviorwill follow account default.
        #
        #   @return [Boolean, nil]
        optional :can_defer_billing, Orb::Internal::Type::Boolean, nil?: true

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

        # @!method initialize(price_interval_id:, billing_cycle_day: nil, can_defer_billing: nil, end_date: nil, filter: nil, fixed_fee_quantity_transitions: nil, start_date: nil, usage_customer_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::Edit} for more details.
        #
        #   @param price_interval_id [String] The id of the price interval to edit.
        #
        #   @param billing_cycle_day [Integer, nil] The updated billing cycle day for this price interval. If not specified, the bil
        #
        #   @param can_defer_billing [Boolean, nil] If true, ending an in-arrears price interval mid-cycle will defer billing the fi
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
