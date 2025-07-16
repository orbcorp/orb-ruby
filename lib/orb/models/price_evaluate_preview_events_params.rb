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
        #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, nil]
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
        #   @param price [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, nil] An inline price definition to evaluate, allowing you to test price configuration
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

          variant :scalable_matrix_with_unit_pricing,
                  -> {
                    Orb::NewFloatingScalableMatrixWithUnitPricingPrice
                  }

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::NewFloatingScalableMatrixWithTieredPricingPrice
                  }

          variant :cumulative_grouped_bulk, -> { Orb::NewFloatingCumulativeGroupedBulkPrice }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingTieredBPSPrice, Orb::Models::NewFloatingBPSPrice, Orb::Models::NewFloatingBulkBPSPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice)]
        end
      end
    end
  end
end
