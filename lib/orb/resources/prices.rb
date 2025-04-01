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
      # @overload create(cadence:, currency:, item_id:, model_type:, name:, unit_config:, package_config:, matrix_config:, matrix_with_allocation_config:, tiered_config:, tiered_bps_config:, bps_config:, bulk_bps_config:, bulk_config:, threshold_total_amount_config:, tiered_package_config:, grouped_tiered_config:, max_group_tiered_package_config:, tiered_with_minimum_config:, package_with_allocation_config:, tiered_package_with_minimum_config:, unit_with_percent_config:, tiered_with_proration_config:, unit_with_proration_config:, grouped_allocation_config:, grouped_with_prorated_minimum_config:, grouped_with_metered_minimum_config:, matrix_with_display_name_config:, bulk_with_proration_config:, grouped_tiered_package_config:, scalable_matrix_with_unit_pricing_config:, scalable_matrix_with_tiered_pricing_config:, cumulative_grouped_bulk_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, request_options: {})
      #
      # @param cadence [Symbol, Orb::Models::PriceCreateParams::Cadence]
      # @param currency [String]
      # @param item_id [String]
      # @param model_type [Symbol, Orb::Models::PriceCreateParams::ModelType]
      # @param name [String]
      # @param unit_config [Orb::Models::PriceCreateParams::UnitConfig]
      # @param package_config [Orb::Models::PriceCreateParams::PackageConfig]
      # @param matrix_config [Orb::Models::PriceCreateParams::MatrixConfig]
      # @param matrix_with_allocation_config [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      # @param tiered_config [Orb::Models::PriceCreateParams::TieredConfig]
      # @param tiered_bps_config [Orb::Models::PriceCreateParams::TieredBpsConfig]
      # @param bps_config [Orb::Models::PriceCreateParams::BpsConfig]
      # @param bulk_bps_config [Orb::Models::PriceCreateParams::BulkBpsConfig]
      # @param bulk_config [Orb::Models::PriceCreateParams::BulkConfig]
      # @param threshold_total_amount_config [Hash{Symbol=>Object}]
      # @param tiered_package_config [Hash{Symbol=>Object}]
      # @param grouped_tiered_config [Hash{Symbol=>Object}]
      # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
      # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
      # @param package_with_allocation_config [Hash{Symbol=>Object}]
      # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
      # @param unit_with_percent_config [Hash{Symbol=>Object}]
      # @param tiered_with_proration_config [Hash{Symbol=>Object}]
      # @param unit_with_proration_config [Hash{Symbol=>Object}]
      # @param grouped_allocation_config [Hash{Symbol=>Object}]
      # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
      # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
      # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
      # @param bulk_with_proration_config [Hash{Symbol=>Object}]
      # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
      # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
      # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
      # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
      # @param billable_metric_id [String, nil]
      # @param billed_in_advance [Boolean, nil]
      # @param billing_cycle_configuration [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil]
      # @param conversion_rate [Float, nil]
      # @param external_price_id [String, nil]
      # @param fixed_price_quantity [Float, nil]
      # @param invoice_grouping_key [String, nil]
      # @param invoicing_cycle_configuration [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      #
      # @see Orb::Models::PriceCreateParams
      def create(params)
        parsed, options = Orb::Models::PriceCreateParams.dump_request(params)
        @client.request(method: :post, path: "prices", body: parsed, model: Orb::Models::Price, options: options)
      end

      # This endpoint allows you to update the `metadata` property on a price. If you
      #   pass null for the metadata value, it will clear any existing metadata for that
      #   price.
      #
      # @overload update(price_id, metadata: nil, request_options: {})
      #
      # @param price_id [String]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      #
      # @see Orb::Models::PriceUpdateParams
      def update(price_id, params = {})
        parsed, options = Orb::Models::PriceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["prices/%1$s", price_id],
          body: parsed,
          model: Orb::Models::Price,
          options: options
        )
      end

      # This endpoint is used to list all add-on prices created using the
      #   [price creation endpoint](/api-reference/price/create-price).
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Page<Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice>]
      #
      # @see Orb::Models::PriceListParams
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
      # @overload evaluate(price_id, timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, filter: nil, grouping_keys: nil, request_options: {})
      #
      # @param price_id [String]
      # @param timeframe_end [Time]
      # @param timeframe_start [Time]
      # @param customer_id [String, nil]
      # @param external_customer_id [String, nil]
      # @param filter [String, nil]
      # @param grouping_keys [Array<String>]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PriceEvaluateResponse]
      #
      # @see Orb::Models::PriceEvaluateParams
      def evaluate(price_id, params)
        parsed, options = Orb::Models::PriceEvaluateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["prices/%1$s/evaluate", price_id],
          body: parsed,
          model: Orb::Models::PriceEvaluateResponse,
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
      # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
      #
      # @see Orb::Models::PriceFetchParams
      def fetch(price_id, params = {})
        @client.request(
          method: :get,
          path: ["prices/%1$s", price_id],
          model: Orb::Models::Price,
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
