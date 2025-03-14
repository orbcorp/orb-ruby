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
      #   @option params [Symbol, Orb::Models::PriceCreateParams::Cadence] :cadence The cadence to bill for this price on.
      #
      #   @option params [String] :currency An ISO 4217 currency string for which this price is billed in.
      #
      #   @option params [String] :item_id The id of the item the price will be associated with.
      #
      #   @option params [Symbol, Orb::Models::PriceCreateParams::ModelType] :model_type
      #
      #   @option params [String] :name The name of the price.
      #
      #   @option params [Orb::Models::PriceCreateParams::UnitConfig] :unit_config
      #
      #   @option params [Orb::Models::PriceCreateParams::PackageConfig] :package_config
      #
      #   @option params [Orb::Models::PriceCreateParams::MatrixConfig] :matrix_config
      #
      #   @option params [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig] :matrix_with_allocation_config
      #
      #   @option params [Orb::Models::PriceCreateParams::TieredConfig] :tiered_config
      #
      #   @option params [Orb::Models::PriceCreateParams::TieredBpsConfig] :tiered_bps_config
      #
      #   @option params [Orb::Models::PriceCreateParams::BpsConfig] :bps_config
      #
      #   @option params [Orb::Models::PriceCreateParams::BulkBpsConfig] :bulk_bps_config
      #
      #   @option params [Orb::Models::PriceCreateParams::BulkConfig] :bulk_config
      #
      #   @option params [Hash{Symbol=>Object}] :threshold_total_amount_config
      #
      #   @option params [Hash{Symbol=>Object}] :tiered_package_config
      #
      #   @option params [Hash{Symbol=>Object}] :grouped_tiered_config
      #
      #   @option params [Hash{Symbol=>Object}] :max_group_tiered_package_config
      #
      #   @option params [Hash{Symbol=>Object}] :tiered_with_minimum_config
      #
      #   @option params [Hash{Symbol=>Object}] :package_with_allocation_config
      #
      #   @option params [Hash{Symbol=>Object}] :tiered_package_with_minimum_config
      #
      #   @option params [Hash{Symbol=>Object}] :unit_with_percent_config
      #
      #   @option params [Hash{Symbol=>Object}] :tiered_with_proration_config
      #
      #   @option params [Hash{Symbol=>Object}] :unit_with_proration_config
      #
      #   @option params [Hash{Symbol=>Object}] :grouped_allocation_config
      #
      #   @option params [Hash{Symbol=>Object}] :grouped_with_prorated_minimum_config
      #
      #   @option params [Hash{Symbol=>Object}] :grouped_with_metered_minimum_config
      #
      #   @option params [Hash{Symbol=>Object}] :matrix_with_display_name_config
      #
      #   @option params [Hash{Symbol=>Object}] :bulk_with_proration_config
      #
      #   @option params [Hash{Symbol=>Object}] :grouped_tiered_package_config
      #
      #   @option params [Hash{Symbol=>Object}] :scalable_matrix_with_unit_pricing_config
      #
      #   @option params [Hash{Symbol=>Object}] :scalable_matrix_with_tiered_pricing_config
      #
      #   @option params [Hash{Symbol=>Object}] :cumulative_grouped_bulk_config
      #
      #   @option params [String, nil] :billable_metric_id The id of the billable metric for the price. Only needed if the price is
      #     usage-based.
      #
      #   @option params [Boolean, nil] :billed_in_advance If the Price represents a fixed cost, the price will be billed in-advance if
      #     this is true, and in-arrears if this is false.
      #
      #   @option params [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil] :billing_cycle_configuration For custom cadence: specifies the duration of the billing period in days or
      #     months.
      #
      #   @option params [Float, nil] :conversion_rate The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @option params [String, nil] :external_price_id An alias for the price.
      #
      #   @option params [Float, nil] :fixed_price_quantity If the Price represents a fixed cost, this represents the quantity of units
      #     applied.
      #
      #   @option params [String, nil] :invoice_grouping_key The property used to group this price on an invoice
      #
      #   @option params [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil] :invoicing_cycle_configuration Within each billing cycle, specifies the cadence at which invoices are produced.
      #     If unspecified, a single invoice is produced per billing cycle.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      def create(params)
        parsed, options = Orb::Models::PriceCreateParams.dump_request(params)
        @client.request(method: :post, path: "prices", body: parsed, model: Orb::Models::Price, options: options)
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
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      def update(price_id, params = {})
        parsed, options = Orb::Models::PriceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["prices/%0s", price_id],
          body: parsed,
          model: Orb::Models::Price,
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
      # @return [Orb::Page<Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice>]
      def list(params = {})
        parsed, options = Orb::Models::PriceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "prices",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::Price,
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
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      def fetch(price_id, params = {})
        @client.request(
          method: :get,
          path: ["prices/%0s", price_id],
          model: Orb::Models::Price,
          options: params[:request_options]
        )
      end

      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_price_id = Orb::Resources::Prices::ExternalPriceID.new(client: client)
      end
    end
  end
end
