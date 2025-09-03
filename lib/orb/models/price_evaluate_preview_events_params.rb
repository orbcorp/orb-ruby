# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate_preview_events
    class PriceEvaluatePreviewEventsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute timeframe_end
      #   The exclusive upper bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #   The inclusive lower bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute customer_id
      #   The ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute events
      #   List of preview events to use instead of actual usage data
      #
      #   @return [Array<Orb::Models::PriceEvaluatePreviewEventsParams::Event>, nil]
      optional :events, -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluatePreviewEventsParams::Event] }

      # @!attribute external_customer_id
      #   The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute price_evaluations
      #   List of prices to evaluate (max 100)
      #
      #   @return [Array<Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation>, nil]
      optional :price_evaluations,
               -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation] }

      # @!method initialize(timeframe_end:, timeframe_start:, customer_id: nil, events: nil, external_customer_id: nil, price_evaluations: nil, request_options: {})
      #   @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      #   @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      #   @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      #   @param events [Array<Orb::Models::PriceEvaluatePreviewEventsParams::Event>] List of preview events to use instead of actual usage data
      #
      #   @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @param price_evaluations [Array<Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation>] List of prices to evaluate (max 100)
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Event < Orb::Internal::Type::BaseModel
        # @!attribute event_name
        #   A name to meaningfully identify the action or event type.
        #
        #   @return [String]
        required :event_name, String

        # @!attribute properties
        #   A dictionary of custom properties. Values in this dictionary must be numeric,
        #   boolean, or strings. Nested dictionaries are disallowed.
        #
        #   @return [Hash{Symbol=>Object}]
        required :properties, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute timestamp
        #   An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        #   represent the time that usage was recorded, and is particularly important to
        #   attribute usage to a given billing period.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute customer_id
        #   The Orb Customer identifier
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute external_customer_id
        #   An alias for the Orb customer, whose mapping is specified when creating the
        #   customer
        #
        #   @return [String, nil]
        optional :external_customer_id, String, nil?: true

        # @!method initialize(event_name:, properties:, timestamp:, customer_id: nil, external_customer_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEvaluatePreviewEventsParams::Event} for more details.
        #
        #   @param event_name [String] A name to meaningfully identify the action or event type.
        #
        #   @param properties [Hash{Symbol=>Object}] A dictionary of custom properties. Values in this dictionary must be numeric, bo
        #
        #   @param timestamp [Time] An ISO 8601 format date with no timezone offset (i.e. UTC). This should represen
        #
        #   @param customer_id [String, nil] The Orb Customer identifier
        #
        #   @param external_customer_id [String, nil] An alias for the Orb customer, whose mapping is specified when creating the cust
      end

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        # @!attribute external_price_id
        #   The external ID of a price to evaluate that exists in your Orb account.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute filter
        #   A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the underlying billable metric
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute grouping_keys
        #   Properties (or
        #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        #   to group the underlying billable metric
        #
        #   @return [Array<String>, nil]
        optional :grouping_keys, Orb::Internal::Type::ArrayOf[String]

        # @!attribute price
        #   An inline price definition to evaluate, allowing you to test price
        #   configurations before adding them to Orb.
        #
        #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMinimumCompositePrice, nil]
        optional :price,
                 union: -> {
                   Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price
                 },
                 nil?: true

        # @!attribute price_id
        #   The ID of a price to evaluate that exists in your Orb account.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(external_price_id: nil, filter: nil, grouping_keys: nil, price: nil, price_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation} for more
        #   details.
        #
        #   @param external_price_id [String, nil] The external ID of a price to evaluate that exists in your Orb account.
        #
        #   @param filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
        #
        #   @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
        #
        #   @param price [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMinimumCompositePrice, nil] An inline price definition to evaluate, allowing you to test price configuration
        #
        #   @param price_id [String, nil] The ID of a price to evaluate that exists in your Orb account.

        # An inline price definition to evaluate, allowing you to test price
        # configurations before adding them to Orb.
        #
        # @see Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewFloatingUnitPrice }

          variant :package, -> { Orb::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::NewFloatingMatrixPrice }

          variant :matrix_with_allocation, -> { Orb::NewFloatingMatrixWithAllocationPrice }

          variant :tiered, -> { Orb::NewFloatingTieredPrice }

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

          variant :grouped_with_min_max_thresholds,
                  -> { Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds }

          variant :minimum, -> { Orb::NewFloatingMinimumCompositePrice }

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_min_max_thresholds_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_min_max_thresholds_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
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
                       Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::ConversionRateConfig
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
            #   {Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_min_max_thresholds_config [Hash{Symbol=>Object}]
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
            #   @param model_type [Symbol, :grouped_with_min_max_thresholds]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds#cadence
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

          # @!method self.variants
          #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMinimumCompositePrice)]
        end
      end
    end
  end
end
