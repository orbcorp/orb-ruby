# typed: strong

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
          body:
            T.any(
              Orb::NewFloatingUnitPrice::OrHash,
              Orb::NewFloatingTieredPrice::OrHash,
              Orb::NewFloatingBulkPrice::OrHash,
              Orb::PriceCreateParams::Body::BulkWithFilters::OrHash,
              Orb::NewFloatingPackagePrice::OrHash,
              Orb::NewFloatingMatrixPrice::OrHash,
              Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
              Orb::NewFloatingTieredPackagePrice::OrHash,
              Orb::NewFloatingTieredWithMinimumPrice::OrHash,
              Orb::NewFloatingGroupedTieredPrice::OrHash,
              Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
              Orb::NewFloatingPackageWithAllocationPrice::OrHash,
              Orb::NewFloatingUnitWithPercentPrice::OrHash,
              Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
              Orb::NewFloatingTieredWithProrationPrice::OrHash,
              Orb::NewFloatingUnitWithProrationPrice::OrHash,
              Orb::NewFloatingGroupedAllocationPrice::OrHash,
              Orb::NewFloatingBulkWithProrationPrice::OrHash,
              Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
              Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::OrHash,
              Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
              Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
              Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
              Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
              Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
              Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash,
              Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::OrHash,
              Orb::NewFloatingMinimumCompositePrice::OrHash,
              Orb::PriceCreateParams::Body::Percent::OrHash,
              Orb::PriceCreateParams::Body::EventOutput::OrHash
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Price::Variants)
      end
      def create(
        # New floating price request body params.
        body:,
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
          metric_parameter_overrides: T.nilable(T::Hash[Symbol, T.anything]),
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
        # Optional overrides for parameterized billable metric parameters. If the metric
        # has parameter definitions and no overrides are provided, defaults will be used.
        metric_parameter_overrides: nil,
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
