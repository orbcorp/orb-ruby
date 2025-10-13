# typed: strong

module Orb
  module Resources
    class Prices
      sig { returns(Orb::Resources::Prices::ExternalPriceID) }
      attr_reader :external_price_id

      # This endpoint is used to create a [price](/product-catalog/price-configuration).
      # A price created using this endpoint is always an add-on, meaning that it's not
      # associated with a specific plan and can instead be individually added to
      # subscriptions, including subscriptions on different plans.
      #
      # An `external_price_id` can be optionally specified as an alias to allow
      # ergonomic interaction with prices in the Orb API.
      #
      # See the [Price resource](/product-catalog/price-configuration) for the
      # specification of different price model configurations possible in this endpoint.
      sig do
        params(
          cadence: Orb::PriceCreateParams::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::PriceCreateParams::ModelType::OrSymbol,
          name: String,
          unit_config: Orb::UnitConfig::OrHash,
          tiered_config: Orb::TieredConfig::OrHash,
          bulk_config: Orb::BulkConfig::OrHash,
          bulk_with_filters_config:
            Orb::PriceCreateParams::BulkWithFiltersConfig::OrHash,
          package_config: Orb::PackageConfig::OrHash,
          matrix_config: Orb::MatrixConfig::OrHash,
          threshold_total_amount_config:
            Orb::PriceCreateParams::ThresholdTotalAmountConfig::OrHash,
          tiered_package_config:
            Orb::PriceCreateParams::TieredPackageConfig::OrHash,
          tiered_with_minimum_config:
            Orb::PriceCreateParams::TieredWithMinimumConfig::OrHash,
          grouped_tiered_config:
            Orb::PriceCreateParams::GroupedTieredConfig::OrHash,
          tiered_package_with_minimum_config:
            Orb::PriceCreateParams::TieredPackageWithMinimumConfig::OrHash,
          package_with_allocation_config:
            Orb::PriceCreateParams::PackageWithAllocationConfig::OrHash,
          unit_with_percent_config:
            Orb::PriceCreateParams::UnitWithPercentConfig::OrHash,
          matrix_with_allocation_config:
            Orb::MatrixWithAllocationConfig::OrHash,
          tiered_with_proration_config:
            Orb::PriceCreateParams::TieredWithProrationConfig::OrHash,
          unit_with_proration_config:
            Orb::PriceCreateParams::UnitWithProrationConfig::OrHash,
          grouped_allocation_config:
            Orb::PriceCreateParams::GroupedAllocationConfig::OrHash,
          bulk_with_proration_config:
            Orb::PriceCreateParams::BulkWithProrationConfig::OrHash,
          grouped_with_prorated_minimum_config:
            Orb::PriceCreateParams::GroupedWithProratedMinimumConfig::OrHash,
          grouped_with_metered_minimum_config:
            Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::OrHash,
          grouped_with_min_max_thresholds_config:
            Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig::OrHash,
          matrix_with_display_name_config:
            Orb::PriceCreateParams::MatrixWithDisplayNameConfig::OrHash,
          grouped_tiered_package_config:
            Orb::PriceCreateParams::GroupedTieredPackageConfig::OrHash,
          max_group_tiered_package_config:
            Orb::PriceCreateParams::MaxGroupTieredPackageConfig::OrHash,
          scalable_matrix_with_unit_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::OrHash,
          scalable_matrix_with_tiered_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::OrHash,
          cumulative_grouped_bulk_config:
            Orb::PriceCreateParams::CumulativeGroupedBulkConfig::OrHash,
          minimum_config: Orb::PriceCreateParams::MinimumConfig::OrHash,
          percent_config: Orb::PriceCreateParams::PercentConfig::OrHash,
          event_output_config:
            Orb::PriceCreateParams::EventOutputConfig::OrHash,
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          conversion_rate_config:
            T.nilable(
              T.any(
                Orb::UnitConversionRateConfig::OrHash,
                Orb::TieredConversionRateConfig::OrHash
              )
            ),
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Price::Variants)
      end
      def create(
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # Configuration for unit pricing
        unit_config:,
        # Configuration for tiered pricing
        tiered_config:,
        # Configuration for bulk pricing
        bulk_config:,
        # Configuration for bulk_with_filters pricing
        bulk_with_filters_config:,
        # Configuration for package pricing
        package_config:,
        # Configuration for matrix pricing
        matrix_config:,
        # Configuration for threshold_total_amount pricing
        threshold_total_amount_config:,
        # Configuration for tiered_package pricing
        tiered_package_config:,
        # Configuration for tiered_with_minimum pricing
        tiered_with_minimum_config:,
        # Configuration for grouped_tiered pricing
        grouped_tiered_config:,
        # Configuration for tiered_package_with_minimum pricing
        tiered_package_with_minimum_config:,
        # Configuration for package_with_allocation pricing
        package_with_allocation_config:,
        # Configuration for unit_with_percent pricing
        unit_with_percent_config:,
        # Configuration for matrix_with_allocation pricing
        matrix_with_allocation_config:,
        # Configuration for tiered_with_proration pricing
        tiered_with_proration_config:,
        # Configuration for unit_with_proration pricing
        unit_with_proration_config:,
        # Configuration for grouped_allocation pricing
        grouped_allocation_config:,
        # Configuration for bulk_with_proration pricing
        bulk_with_proration_config:,
        # Configuration for grouped_with_prorated_minimum pricing
        grouped_with_prorated_minimum_config:,
        # Configuration for grouped_with_metered_minimum pricing
        grouped_with_metered_minimum_config:,
        # Configuration for grouped_with_min_max_thresholds pricing
        grouped_with_min_max_thresholds_config:,
        # Configuration for matrix_with_display_name pricing
        matrix_with_display_name_config:,
        # Configuration for grouped_tiered_package pricing
        grouped_tiered_package_config:,
        # Configuration for max_group_tiered_package pricing
        max_group_tiered_package_config:,
        # Configuration for scalable_matrix_with_unit_pricing pricing
        scalable_matrix_with_unit_pricing_config:,
        # Configuration for scalable_matrix_with_tiered_pricing pricing
        scalable_matrix_with_tiered_pricing_config:,
        # Configuration for cumulative_grouped_bulk pricing
        cumulative_grouped_bulk_config:,
        # Configuration for minimum pricing
        minimum_config:,
        # Configuration for percent pricing
        percent_config:,
        # Configuration for event_output pricing
        event_output_config:,
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
        # The configuration for the rate of the price currency to the invoicing currency.
        conversion_rate_config: nil,
        # For dimensional price: specifies a price group and dimension values
        dimensional_price_configuration: nil,
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
        request_options: {}
      )
      end

      # This endpoint allows you to update the `metadata` property on a price. If you
      # pass null for the metadata value, it will clear any existing metadata for that
      # price.
      sig do
        params(
          price_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Price::Variants)
      end
      def update(
        price_id,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

      # This endpoint is used to list all add-on prices created using the
      # [price creation endpoint](/api-reference/price/create-price).
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Price::Variants])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      )
      end

      # [NOTE] It is recommended to use the `/v1/prices/evaluate` which offers further
      # functionality, such as multiple prices, inline price definitions, and querying
      # over preview events.
      #
      # This endpoint is used to evaluate the output of a price for a given customer and
      # time range. It enables filtering and grouping the output using
      # [computed properties](/extensibility/advanced-metrics#computed-properties),
      # supporting the following workflows:
      #
      # 1. Showing detailed usage and costs to the end customer.
      # 2. Auditing subtotals on invoice line items.
      #
      # For these workflows, the expressiveness of computed properties in both the
      # filters and grouping is critical. For example, if you'd like to show your
      # customer their usage grouped by hour and another property, you can do so with
      # the following `grouping_keys`:
      # `["hour_floor_timestamp_millis(timestamp_millis)", "my_property"]`. If you'd
      # like to examine a customer's usage for a specific property value, you can do so
      # with the following `filter`:
      # `my_property = 'foo' AND my_other_property = 'bar'`.
      #
      # By default, the start of the time range must be no more than 100 days ago and
      # the length of the results must be no greater than 1000. Note that this is a POST
      # endpoint rather than a GET endpoint because it employs a JSON body rather than
      # query parameters.
      sig do
        params(
          price_id: String,
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          filter: T.nilable(String),
          grouping_keys: T::Array[String],
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::PriceEvaluateResponse)
      end
      def evaluate(
        price_id,
        # The exclusive upper bound for event timestamps
        timeframe_end:,
        # The inclusive lower bound for event timestamps
        timeframe_start:,
        # The ID of the customer to which this evaluation is scoped.
        customer_id: nil,
        # The external customer ID of the customer to which this evaluation is scoped.
        external_customer_id: nil,
        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the underlying billable metric
        filter: nil,
        # Properties (or
        # [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        # to group the underlying billable metric
        grouping_keys: nil,
        request_options: {}
      )
      end

      # This endpoint is used to evaluate the output of price(s) for a given customer
      # and time range over ingested events. It enables filtering and grouping the
      # output using
      # [computed properties](/extensibility/advanced-metrics#computed-properties),
      # supporting the following workflows:
      #
      # 1. Showing detailed usage and costs to the end customer.
      # 2. Auditing subtotals on invoice line items.
      #
      # For these workflows, the expressiveness of computed properties in both the
      # filters and grouping is critical. For example, if you'd like to show your
      # customer their usage grouped by hour and another property, you can do so with
      # the following `grouping_keys`:
      # `["hour_floor_timestamp_millis(timestamp_millis)", "my_property"]`. If you'd
      # like to examine a customer's usage for a specific property value, you can do so
      # with the following `filter`:
      # `my_property = 'foo' AND my_other_property = 'bar'`.
      #
      # Prices may either reference existing prices in your Orb account or be defined
      # inline in the request body. Up to 100 prices can be evaluated in a single
      # request.
      #
      # Prices are evaluated on ingested events and the start of the time range must be
      # no more than 100 days ago. To evaluate based off a set of provided events, the
      # [evaluate preview events](/api-reference/price/evaluate-preview-events) endpoint
      # can be used instead.
      #
      # Note that this is a POST endpoint rather than a GET endpoint because it employs
      # a JSON body rather than query parameters.
      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          price_evaluations:
            T::Array[Orb::PriceEvaluateMultipleParams::PriceEvaluation::OrHash],
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::PriceEvaluateMultipleResponse)
      end
      def evaluate_multiple(
        # The exclusive upper bound for event timestamps
        timeframe_end:,
        # The inclusive lower bound for event timestamps
        timeframe_start:,
        # The ID of the customer to which this evaluation is scoped.
        customer_id: nil,
        # The external customer ID of the customer to which this evaluation is scoped.
        external_customer_id: nil,
        # List of prices to evaluate (max 100)
        price_evaluations: nil,
        request_options: {}
      )
      end

      # This endpoint evaluates prices on preview events instead of actual usage, making
      # it ideal for building price calculators and cost estimation tools. You can
      # filter and group results using
      # [computed properties](/extensibility/advanced-metrics#computed-properties) to
      # analyze pricing across different dimensions.
      #
      # Prices may either reference existing prices in your Orb account or be defined
      # inline in the request body. The endpoint has the following limitations:
      #
      # 1. Up to 100 prices can be evaluated in a single request.
      # 2. Up to 500 preview events can be provided in a single request.
      #
      # A top-level customer_id is required to evaluate the preview events.
      # Additionally, all events without a customer_id will have the top-level
      # customer_id added.
      #
      # Note that this is a POST endpoint rather than a GET endpoint because it employs
      # a JSON body rather than query parameters.
      sig do
        params(
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          events:
            T::Array[Orb::PriceEvaluatePreviewEventsParams::Event::OrHash],
          external_customer_id: T.nilable(String),
          price_evaluations:
            T::Array[
              Orb::PriceEvaluatePreviewEventsParams::PriceEvaluation::OrHash
            ],
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::PriceEvaluatePreviewEventsResponse)
      end
      def evaluate_preview_events(
        # The exclusive upper bound for event timestamps
        timeframe_end:,
        # The inclusive lower bound for event timestamps
        timeframe_start:,
        # The ID of the customer to which this evaluation is scoped.
        customer_id: nil,
        # List of preview events to use instead of actual usage data
        events: nil,
        # The external customer ID of the customer to which this evaluation is scoped.
        external_customer_id: nil,
        # List of prices to evaluate (max 100)
        price_evaluations: nil,
        request_options: {}
      )
      end

      # This endpoint returns a price given an identifier.
      sig do
        params(
          price_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Price::Variants)
      end
      def fetch(price_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
