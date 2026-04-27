# frozen_string_literal: true

module Orb
  module Resources
    # The Price resource represents a price that can be billed on a subscription,
    # resulting in a charge on an invoice in the form of an invoice line item. Prices
    # take a quantity and determine an amount to bill.
    #
    # Orb supports a few different pricing models out of the box. Each of these models
    # is serialized differently in a given Price object. The model_type field
    # determines the key for the configuration object that is present.
    #
    # For more on the types of prices, see
    # [the core concepts documentation](/core-concepts#plan-and-price)
    class Prices
      # The Price resource represents a price that can be billed on a subscription,
      # resulting in a charge on an invoice in the form of an invoice line item. Prices
      # take a quantity and determine an amount to bill.
      #
      # Orb supports a few different pricing models out of the box. Each of these models
      # is serialized differently in a given Price object. The model_type field
      # determines the key for the configuration object that is present.
      #
      # For more on the types of prices, see
      # [the core concepts documentation](/core-concepts#plan-and-price)
      # @return [Orb::Resources::Prices::ExternalPriceID]
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
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceCreateParams::Body::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceCreateParams::Body::Percent, Orb::Models::PriceCreateParams::Body::EventOutput] New floating price request body params.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput]
      #
      # @see Orb::Models::PriceCreateParams
      def create(params)
        parsed, options = Orb::PriceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "prices",
          body: parsed[:body],
          model: Orb::Price,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceUpdateParams} for more details.
      #
      # This endpoint allows you to update the `metadata` property on a price. If you
      # pass null for the metadata value, it will clear any existing metadata for that
      # price.
      #
      # @overload update(price_id, metadata: nil, request_options: {})
      #
      # @param price_id [String]
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput]
      #
      # @see Orb::Models::PriceUpdateParams
      def update(price_id, params = {})
        parsed, options = Orb::PriceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["prices/%1$s", price_id],
          body: parsed,
          model: Orb::Price,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceListParams} for more details.
      #
      # This endpoint is used to list all add-on prices created using the
      # [price creation endpoint](/api-reference/price/create-price).
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput>]
      #
      # @see Orb::Models::PriceListParams
      def list(params = {})
        parsed, options = Orb::PriceListParams.dump_request(params)
        query = Orb::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "prices",
          query: query,
          page: Orb::Internal::Page,
          model: Orb::Price,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceEvaluateParams} for more details.
      #
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
      #
      # @overload evaluate(price_id, timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, filter: nil, grouping_keys: nil, metric_parameter_overrides: nil, request_options: {})
      #
      # @param price_id [String]
      #
      # @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      # @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      # @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      # @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      # @param filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
      #
      # @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
      #
      # @param metric_parameter_overrides [Hash{Symbol=>Object}, nil] Optional overrides for parameterized billable metric parameters. If the metric h
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PriceEvaluateResponse]
      #
      # @see Orb::Models::PriceEvaluateParams
      def evaluate(price_id, params)
        parsed, options = Orb::PriceEvaluateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["prices/%1$s/evaluate", price_id],
          body: parsed,
          model: Orb::Models::PriceEvaluateResponse,
          options: options
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
      #
      # @overload evaluate_multiple(timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, price_evaluations: nil, request_options: {})
      #
      # @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      # @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      # @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      # @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      # @param price_evaluations [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation>] List of prices to evaluate (max 100)
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PriceEvaluateMultipleResponse]
      #
      # @see Orb::Models::PriceEvaluateMultipleParams
      def evaluate_multiple(params)
        parsed, options = Orb::PriceEvaluateMultipleParams.dump_request(params)
        @client.request(
          method: :post,
          path: "prices/evaluate",
          body: parsed,
          model: Orb::Models::PriceEvaluateMultipleResponse,
          options: options
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
      #
      # @overload evaluate_preview_events(timeframe_end:, timeframe_start:, customer_id: nil, events: nil, external_customer_id: nil, price_evaluations: nil, request_options: {})
      #
      # @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      # @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      # @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      # @param events [Array<Orb::Models::PriceEvaluatePreviewEventsParams::Event>] List of preview events to use instead of actual usage data
      #
      # @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      # @param price_evaluations [Array<Orb::Models::PriceEvaluatePreviewEventsParams::PriceEvaluation>] List of prices to evaluate (max 100)
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PriceEvaluatePreviewEventsResponse]
      #
      # @see Orb::Models::PriceEvaluatePreviewEventsParams
      def evaluate_preview_events(params)
        parsed, options = Orb::PriceEvaluatePreviewEventsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "prices/evaluate_preview_events",
          body: parsed,
          model: Orb::Models::PriceEvaluatePreviewEventsResponse,
          options: options
        )
      end

      # This endpoint returns a price given an identifier.
      #
      # @overload fetch(price_id, request_options: {})
      #
      # @param price_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput]
      #
      # @see Orb::Models::PriceFetchParams
      def fetch(price_id, params = {})
        @client.request(
          method: :get,
          path: ["prices/%1$s", price_id],
          model: Orb::Price,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_price_id = Orb::Resources::Prices::ExternalPriceID.new(client: client)
      end
    end
  end
end
