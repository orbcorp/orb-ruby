# typed: strong

module Orb
  module Resources
    class Prices
      sig { returns(Orb::Resources::Prices::ExternalPriceID) }
      attr_reader :external_price_id

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
      sig do
        params(
          cadence: Orb::PriceCreateParams::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::PriceCreateParams::ModelType::OrSymbol,
          name: String,
          unit_config: Orb::PriceCreateParams::UnitConfig::OrHash,
          package_config: Orb::PriceCreateParams::PackageConfig::OrHash,
          matrix_config: Orb::PriceCreateParams::MatrixConfig::OrHash,
          matrix_with_allocation_config:
            Orb::PriceCreateParams::MatrixWithAllocationConfig::OrHash,
          tiered_config: Orb::PriceCreateParams::TieredConfig::OrHash,
          tiered_bps_config: Orb::PriceCreateParams::TieredBpsConfig::OrHash,
          bps_config: Orb::PriceCreateParams::BpsConfig::OrHash,
          bulk_bps_config: Orb::PriceCreateParams::BulkBpsConfig::OrHash,
          bulk_config: Orb::PriceCreateParams::BulkConfig::OrHash,
          threshold_total_amount_config: T::Hash[Symbol, T.anything],
          tiered_package_config: T::Hash[Symbol, T.anything],
          grouped_tiered_config: T::Hash[Symbol, T.anything],
          max_group_tiered_package_config: T::Hash[Symbol, T.anything],
          tiered_with_minimum_config: T::Hash[Symbol, T.anything],
          package_with_allocation_config: T::Hash[Symbol, T.anything],
          tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
          unit_with_percent_config: T::Hash[Symbol, T.anything],
          tiered_with_proration_config: T::Hash[Symbol, T.anything],
          unit_with_proration_config: T::Hash[Symbol, T.anything],
          grouped_allocation_config: T::Hash[Symbol, T.anything],
          grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
          grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
          matrix_with_display_name_config: T::Hash[Symbol, T.anything],
          bulk_with_proration_config: T::Hash[Symbol, T.anything],
          grouped_tiered_package_config: T::Hash[Symbol, T.anything],
          scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
          scalable_matrix_with_tiered_pricing_config:
            T::Hash[Symbol, T.anything],
          cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(
              Orb::PriceCreateParams::BillingCycleConfiguration::OrHash
            ),
          conversion_rate: T.nilable(Float),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(
              Orb::PriceCreateParams::InvoicingCycleConfiguration::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(
          T.any(
            Orb::Price::Unit,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::Tiered,
            Orb::Price::TieredBps,
            Orb::Price::Bps,
            Orb::Price::BulkBps,
            Orb::Price::Bulk,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredWithMinimum,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk
          )
        )
      end
      def create(
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # The id of the item the price will be associated with.
        item_id:,
        model_type:,
        # The name of the price.
        name:,
        unit_config:,
        package_config:,
        matrix_config:,
        matrix_with_allocation_config:,
        tiered_config:,
        tiered_bps_config:,
        bps_config:,
        bulk_bps_config:,
        bulk_config:,
        threshold_total_amount_config:,
        tiered_package_config:,
        grouped_tiered_config:,
        max_group_tiered_package_config:,
        tiered_with_minimum_config:,
        package_with_allocation_config:,
        tiered_package_with_minimum_config:,
        unit_with_percent_config:,
        tiered_with_proration_config:,
        unit_with_proration_config:,
        grouped_allocation_config:,
        grouped_with_prorated_minimum_config:,
        grouped_with_metered_minimum_config:,
        matrix_with_display_name_config:,
        bulk_with_proration_config:,
        grouped_tiered_package_config:,
        scalable_matrix_with_unit_pricing_config:,
        scalable_matrix_with_tiered_pricing_config:,
        cumulative_grouped_bulk_config:,
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
        ).returns(
          T.any(
            Orb::Price::Unit,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::Tiered,
            Orb::Price::TieredBps,
            Orb::Price::Bps,
            Orb::Price::BulkBps,
            Orb::Price::Bulk,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredWithMinimum,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk
          )
        )
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
        ).returns(
          Orb::Internal::Page[
            T.any(
              Orb::Price::Unit,
              Orb::Price::Package,
              Orb::Price::Matrix,
              Orb::Price::Tiered,
              Orb::Price::TieredBps,
              Orb::Price::Bps,
              Orb::Price::BulkBps,
              Orb::Price::Bulk,
              Orb::Price::ThresholdTotalAmount,
              Orb::Price::TieredPackage,
              Orb::Price::GroupedTiered,
              Orb::Price::TieredWithMinimum,
              Orb::Price::TieredPackageWithMinimum,
              Orb::Price::PackageWithAllocation,
              Orb::Price::UnitWithPercent,
              Orb::Price::MatrixWithAllocation,
              Orb::Price::TieredWithProration,
              Orb::Price::UnitWithProration,
              Orb::Price::GroupedAllocation,
              Orb::Price::GroupedWithProratedMinimum,
              Orb::Price::GroupedWithMeteredMinimum,
              Orb::Price::MatrixWithDisplayName,
              Orb::Price::BulkWithProration,
              Orb::Price::GroupedTieredPackage,
              Orb::Price::MaxGroupTieredPackage,
              Orb::Price::ScalableMatrixWithUnitPricing,
              Orb::Price::ScalableMatrixWithTieredPricing,
              Orb::Price::CumulativeGroupedBulk
            )
          ]
        )
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

      # This endpoint returns a price given an identifier.
      sig do
        params(
          price_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(
          T.any(
            Orb::Price::Unit,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::Tiered,
            Orb::Price::TieredBps,
            Orb::Price::Bps,
            Orb::Price::BulkBps,
            Orb::Price::Bulk,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredWithMinimum,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk
          )
        )
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
