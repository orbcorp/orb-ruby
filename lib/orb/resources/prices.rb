# frozen_string_literal: true

module Orb
  module Resources
    class Prices
      # @return [Orb::Resources::Prices::ExternalPriceID]
      attr_reader :external_price_id

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceCreateParams} for more details.
      #
      # This endpoint is used to create a [price](/product-catalog/price-configuration).
      # A price created using this endpoint is always an add-on, meaning that it’s not
      # associated with a specific plan and can instead be individually added to
      # subscriptions, including subscriptions on different plans.
      #
      # An `external_price_id` can be optionally specified as an alias to allow
      # ergonomic interaction with prices in the Orb API.
      #
      # See the [Price resource](/product-catalog/price-configuration) for the
      # specification of different price model configurations possible in this endpoint.
      #
      # @overload create(cadence:, currency:, item_id:, model_type:, name:, unit_config:, package_config:, matrix_config:, matrix_with_allocation_config:, tiered_config:, tiered_bps_config:, bps_config:, bulk_bps_config:, bulk_config:, threshold_total_amount_config:, tiered_package_config:, grouped_tiered_config:, max_group_tiered_package_config:, tiered_with_minimum_config:, package_with_allocation_config:, tiered_package_with_minimum_config:, unit_with_percent_config:, tiered_with_proration_config:, unit_with_proration_config:, grouped_allocation_config:, grouped_with_prorated_minimum_config:, grouped_with_metered_minimum_config:, matrix_with_display_name_config:, bulk_with_proration_config:, grouped_tiered_package_config:, scalable_matrix_with_unit_pricing_config:, scalable_matrix_with_tiered_pricing_config:, cumulative_grouped_bulk_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, request_options: {})
      #
      # @param cadence [Symbol, Orb::Models::PriceCreateParams::Cadence] The cadence to bill for this price on.
      #
      # @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      # @param item_id [String] The id of the item the price will be associated with.
      #
      # @param model_type [Symbol, Orb::Models::PriceCreateParams::ModelType]
      #
      # @param name [String] The name of the price.
      #
      # @param unit_config [Orb::Models::PriceCreateParams::UnitConfig]
      #
      # @param package_config [Orb::Models::PriceCreateParams::PackageConfig]
      #
      # @param matrix_config [Orb::Models::PriceCreateParams::MatrixConfig]
      #
      # @param matrix_with_allocation_config [Orb::Models::PriceCreateParams::MatrixWithAllocationConfig]
      #
      # @param tiered_config [Orb::Models::PriceCreateParams::TieredConfig]
      #
      # @param tiered_bps_config [Orb::Models::PriceCreateParams::TieredBpsConfig]
      #
      # @param bps_config [Orb::Models::PriceCreateParams::BpsConfig]
      #
      # @param bulk_bps_config [Orb::Models::PriceCreateParams::BulkBpsConfig]
      #
      # @param bulk_config [Orb::Models::PriceCreateParams::BulkConfig]
      #
      # @param threshold_total_amount_config [Hash{Symbol=>Object}]
      #
      # @param tiered_package_config [Hash{Symbol=>Object}]
      #
      # @param grouped_tiered_config [Hash{Symbol=>Object}]
      #
      # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
      #
      # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
      #
      # @param package_with_allocation_config [Hash{Symbol=>Object}]
      #
      # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
      #
      # @param unit_with_percent_config [Hash{Symbol=>Object}]
      #
      # @param tiered_with_proration_config [Hash{Symbol=>Object}]
      #
      # @param unit_with_proration_config [Hash{Symbol=>Object}]
      #
      # @param grouped_allocation_config [Hash{Symbol=>Object}]
      #
      # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
      #
      # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
      #
      # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
      #
      # @param bulk_with_proration_config [Hash{Symbol=>Object}]
      #
      # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
      #
      # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
      #
      # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
      #
      # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
      #
      # @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      # ...
      #
      # @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      # ...
      #
      # @param billing_cycle_configuration [Orb::Models::PriceCreateParams::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      # ...
      #
      # @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      # @param external_price_id [String, nil] An alias for the price.
      #
      # @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
      # ...
      #
      # @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
      #
      # @param invoicing_cycle_configuration [Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
      # ...
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      # ...
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
      #
      # @see Orb::Models::PriceCreateParams
      def create(params)
        parsed, options = Orb::Models::PriceCreateParams.dump_request(params)
        @client.request(method: :post, path: "prices", body: parsed, model: Orb::Models::Price, options: options)
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
      # ...
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
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

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceListParams} for more details.
      #
      # This endpoint is used to list all add-on prices created using the
      # [price creation endpoint](/api-reference/price/create-price).
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      # ...
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk>]
      #
      # @see Orb::Models::PriceListParams
      def list(params = {})
        parsed, options = Orb::Models::PriceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "prices",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::Price,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::PriceEvaluateParams} for more details.
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
      # @overload evaluate(price_id, timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, filter: nil, grouping_keys: nil, request_options: {})
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
      # ...
      #
      # @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
      # ...
      #
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
      # @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
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
