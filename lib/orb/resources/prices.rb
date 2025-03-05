# frozen_string_literal: true

module Orb
  module Resources
    class Prices
      # @return [Orb::Resources::Prices::ExternalPriceID]
      attr_reader :external_price_id

      # This endpoint is used to create a [price](/product-catalog/price-configuration).
      #   A price created using this endpoint is always an add-on, meaning that it’s not
      #   associated with a specific plan and can instead be individually added to
      #   subscriptions, including subscriptions on different plans.
      #
      #   An `external_price_id` can be optionally specified as an alias to allow
      #   ergonomic interaction with prices in the Orb API.
      #
      #   See the [Price resource](/product-catalog/price-configuration) for the
      #   specification of different price model configurations possible in this endpoint.
      #
      # @param params [Orb::Models::PriceCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::Models::NewFloatingPriceModel] :new_floating_price_model
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
      #
      def create(params)
        parsed, options = Orb::Models::PriceCreateParams.dump_request(params)
        case parsed
        in {new_floating_price_model: Hash => union, **rest}
          parsed = {**rest, **union}
        else
        end
        @client.request(
          method: :post,
          path: "prices",
          body: parsed,
          model: Orb::Models::PriceModel,
          options: options
        )
      end

      # This endpoint allows you to update the `metadata` property on a price. If you
      #   pass null for the metadata value, it will clear any existing metadata for that
      #   price.
      #
      # @param price_id [String]
      #
      # @param params [Orb::Models::PriceUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
      #
      def update(price_id, params = {})
        parsed, options = Orb::Models::PriceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["prices/%0s", price_id],
          body: parsed,
          model: Orb::Models::PriceModel,
          options: options
        )
      end

      # This endpoint is used to list all add-on prices created using the
      #   [price creation endpoint](/api-reference/price/create-price).
      #
      # @param params [Orb::Models::PriceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice>]
      #
      def list(params = {})
        parsed, options = Orb::Models::PriceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "prices",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::PriceModel,
          options: options
        )
      end

      # This endpoint is used to evaluate the output of a price for a given customer and
      #   time range. It enables filtering and grouping the output using
      #   [computed properties](/extensibility/advanced-metrics#computed-properties),
      #   supporting the following workflows:
      #
      #   1. Showing detailed usage and costs to the end customer.
      #   2. Auditing subtotals on invoice line items.
      #
      #   For these workflows, the expressiveness of computed properties in both the
      #   filters and grouping is critical. For example, if you'd like to show your
      #   customer their usage grouped by hour and another property, you can do so with
      #   the following `grouping_keys`:
      #   `["hour_floor_timestamp_millis(timestamp_millis)", "my_property"]`. If you'd
      #   like to examine a customer's usage for a specific property value, you can do so
      #   with the following `filter`:
      #   `my_property = 'foo' AND my_other_property = 'bar'`.
      #
      #   By default, the start of the time range must be no more than 100 days ago and
      #   the length of the results must be no greater than 1000. Note that this is a POST
      #   endpoint rather than a GET endpoint because it employs a JSON body rather than
      #   query parameters.
      #
      # @param price_id [String]
      #
      # @param params [Orb::Models::PriceEvaluateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :timeframe_end The exclusive upper bound for event timestamps
      #
      #   @option params [Time] :timeframe_start The inclusive lower bound for event timestamps
      #
      #   @option params [String, nil] :customer_id The ID of the customer to which this evaluation is scoped.
      #
      #   @option params [String, nil] :external_customer_id The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @option params [String, nil] :filter A boolean
      #     [computed property](/extensibility/advanced-metrics#computed-properties) used to
      #     filter the underlying billable metric
      #
      #   @option params [Array<String>] :grouping_keys Properties (or
      #     [computed properties](/extensibility/advanced-metrics#computed-properties)) used
      #     to group the underlying billable metric
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::PriceEvaluateResponse]
      #
      def evaluate(price_id, params)
        parsed, options = Orb::Models::PriceEvaluateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["prices/%0s/evaluate", price_id],
          body: parsed,
          model: Orb::Models::PriceEvaluateResponse,
          options: options
        )
      end

      # This endpoint returns a price given an identifier.
      #
      # @param price_id [String]
      #
      # @param params [Orb::Models::PriceFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
      #
      def fetch(price_id, params = {})
        @client.request(
          method: :get,
          path: ["prices/%0s", price_id],
          model: Orb::Models::PriceModel,
          options: params[:request_options]
        )
      end

      # @param client [Orb::Client]
      #
      def initialize(client:)
        @client = client
        @external_price_id = Orb::Resources::Prices::ExternalPriceID.new(client: client)
      end
    end
  end
end
