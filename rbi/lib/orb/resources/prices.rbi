# typed: strong

module Orb
  module Resources
    class Prices
      sig { returns(Orb::Resources::Prices::ExternalPriceID) }
      attr_reader :external_price_id

      sig do
        params(
          cadence: Symbol,
          currency: String,
          item_id: String,
          model_type: Symbol,
          name: String,
          unit_config: Orb::Models::PriceCreateParams::UnitConfig,
          package_config: Orb::Models::PriceCreateParams::PackageConfig,
          matrix_config: Orb::Models::PriceCreateParams::MatrixConfig,
          matrix_with_allocation_config: Orb::Models::PriceCreateParams::MatrixWithAllocationConfig,
          tiered_config: Orb::Models::PriceCreateParams::TieredConfig,
          tiered_bps_config: Orb::Models::PriceCreateParams::TieredBpsConfig,
          bps_config: Orb::Models::PriceCreateParams::BpsConfig,
          bulk_bps_config: Orb::Models::PriceCreateParams::BulkBpsConfig,
          bulk_config: Orb::Models::PriceCreateParams::BulkConfig,
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
          scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
          cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration),
          conversion_rate: T.nilable(Float),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(T.any(
                    Orb::Models::Price::UnitPrice,
                    Orb::Models::Price::PackagePrice,
                    Orb::Models::Price::MatrixPrice,
                    Orb::Models::Price::TieredPrice,
                    Orb::Models::Price::TieredBpsPrice,
                    Orb::Models::Price::BpsPrice,
                    Orb::Models::Price::BulkBpsPrice,
                    Orb::Models::Price::BulkPrice,
                    Orb::Models::Price::ThresholdTotalAmountPrice,
                    Orb::Models::Price::TieredPackagePrice,
                    Orb::Models::Price::GroupedTieredPrice,
                    Orb::Models::Price::TieredWithMinimumPrice,
                    Orb::Models::Price::TieredPackageWithMinimumPrice,
                    Orb::Models::Price::PackageWithAllocationPrice,
                    Orb::Models::Price::UnitWithPercentPrice,
                    Orb::Models::Price::MatrixWithAllocationPrice,
                    Orb::Models::Price::TieredWithProrationPrice,
                    Orb::Models::Price::UnitWithProrationPrice,
                    Orb::Models::Price::GroupedAllocationPrice,
                    Orb::Models::Price::GroupedWithProratedMinimumPrice,
                    Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                    Orb::Models::Price::MatrixWithDisplayNamePrice,
                    Orb::Models::Price::BulkWithProrationPrice,
                    Orb::Models::Price::GroupedTieredPackagePrice,
                    Orb::Models::Price::MaxGroupTieredPackagePrice,
                    Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                    Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                    Orb::Models::Price::CumulativeGroupedBulkPrice
                  ))
      end
      def create(
        cadence:,
        currency:,
        item_id:,
        model_type:,
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
        billable_metric_id: nil,
        billed_in_advance: nil,
        billing_cycle_configuration: nil,
        conversion_rate: nil,
        external_price_id: nil,
        fixed_price_quantity: nil,
        invoice_grouping_key: nil,
        invoicing_cycle_configuration: nil,
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        params(
          price_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(T.any(
                    Orb::Models::Price::UnitPrice,
                    Orb::Models::Price::PackagePrice,
                    Orb::Models::Price::MatrixPrice,
                    Orb::Models::Price::TieredPrice,
                    Orb::Models::Price::TieredBpsPrice,
                    Orb::Models::Price::BpsPrice,
                    Orb::Models::Price::BulkBpsPrice,
                    Orb::Models::Price::BulkPrice,
                    Orb::Models::Price::ThresholdTotalAmountPrice,
                    Orb::Models::Price::TieredPackagePrice,
                    Orb::Models::Price::GroupedTieredPrice,
                    Orb::Models::Price::TieredWithMinimumPrice,
                    Orb::Models::Price::TieredPackageWithMinimumPrice,
                    Orb::Models::Price::PackageWithAllocationPrice,
                    Orb::Models::Price::UnitWithPercentPrice,
                    Orb::Models::Price::MatrixWithAllocationPrice,
                    Orb::Models::Price::TieredWithProrationPrice,
                    Orb::Models::Price::UnitWithProrationPrice,
                    Orb::Models::Price::GroupedAllocationPrice,
                    Orb::Models::Price::GroupedWithProratedMinimumPrice,
                    Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                    Orb::Models::Price::MatrixWithDisplayNamePrice,
                    Orb::Models::Price::BulkWithProrationPrice,
                    Orb::Models::Price::GroupedTieredPackagePrice,
                    Orb::Models::Price::MaxGroupTieredPackagePrice,
                    Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                    Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                    Orb::Models::Price::CumulativeGroupedBulkPrice
                  ))
      end
      def update(price_id, metadata: nil, request_options: {})
      end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[T.any(
          Orb::Models::Price::UnitPrice,
          Orb::Models::Price::PackagePrice,
          Orb::Models::Price::MatrixPrice,
          Orb::Models::Price::TieredPrice,
          Orb::Models::Price::TieredBpsPrice,
          Orb::Models::Price::BpsPrice,
          Orb::Models::Price::BulkBpsPrice,
          Orb::Models::Price::BulkPrice,
          Orb::Models::Price::ThresholdTotalAmountPrice,
          Orb::Models::Price::TieredPackagePrice,
          Orb::Models::Price::GroupedTieredPrice,
          Orb::Models::Price::TieredWithMinimumPrice,
          Orb::Models::Price::TieredPackageWithMinimumPrice,
          Orb::Models::Price::PackageWithAllocationPrice,
          Orb::Models::Price::UnitWithPercentPrice,
          Orb::Models::Price::MatrixWithAllocationPrice,
          Orb::Models::Price::TieredWithProrationPrice,
          Orb::Models::Price::UnitWithProrationPrice,
          Orb::Models::Price::GroupedAllocationPrice,
          Orb::Models::Price::GroupedWithProratedMinimumPrice,
          Orb::Models::Price::GroupedWithMeteredMinimumPrice,
          Orb::Models::Price::MatrixWithDisplayNamePrice,
          Orb::Models::Price::BulkWithProrationPrice,
          Orb::Models::Price::GroupedTieredPackagePrice,
          Orb::Models::Price::MaxGroupTieredPackagePrice,
          Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
          Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
          Orb::Models::Price::CumulativeGroupedBulkPrice
        )])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      sig do
        params(
          price_id: String,
          timeframe_end: Time,
          timeframe_start: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          filter: T.nilable(String),
          grouping_keys: T::Array[String],
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::PriceEvaluateResponse)
      end
      def evaluate(
        price_id,
        timeframe_end:,
        timeframe_start:,
        customer_id: nil,
        external_customer_id: nil,
        filter: nil,
        grouping_keys: nil,
        request_options: {}
      )
      end

      sig do
        params(
          price_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(T.any(
                    Orb::Models::Price::UnitPrice,
                    Orb::Models::Price::PackagePrice,
                    Orb::Models::Price::MatrixPrice,
                    Orb::Models::Price::TieredPrice,
                    Orb::Models::Price::TieredBpsPrice,
                    Orb::Models::Price::BpsPrice,
                    Orb::Models::Price::BulkBpsPrice,
                    Orb::Models::Price::BulkPrice,
                    Orb::Models::Price::ThresholdTotalAmountPrice,
                    Orb::Models::Price::TieredPackagePrice,
                    Orb::Models::Price::GroupedTieredPrice,
                    Orb::Models::Price::TieredWithMinimumPrice,
                    Orb::Models::Price::TieredPackageWithMinimumPrice,
                    Orb::Models::Price::PackageWithAllocationPrice,
                    Orb::Models::Price::UnitWithPercentPrice,
                    Orb::Models::Price::MatrixWithAllocationPrice,
                    Orb::Models::Price::TieredWithProrationPrice,
                    Orb::Models::Price::UnitWithProrationPrice,
                    Orb::Models::Price::GroupedAllocationPrice,
                    Orb::Models::Price::GroupedWithProratedMinimumPrice,
                    Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                    Orb::Models::Price::MatrixWithDisplayNamePrice,
                    Orb::Models::Price::BulkWithProrationPrice,
                    Orb::Models::Price::GroupedTieredPackagePrice,
                    Orb::Models::Price::MaxGroupTieredPackagePrice,
                    Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                    Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                    Orb::Models::Price::CumulativeGroupedBulkPrice
                  ))
      end
      def fetch(price_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
