# typed: strong

module Orb
  module Resources
    class Prices
      sig { returns(Orb::Resources::Prices::ExternalPriceID) }
      def external_price_id
      end

      sig do
        params(
          new_floating_price_model: Orb::Models::NewFloatingPriceModel,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
          )
      end
      def create(new_floating_price_model:, request_options: {})
      end

      sig do
        params(
          price_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
          )
      end
      def update(price_id, metadata: nil, request_options: {})
      end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(
            Orb::Page[
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
            ]
          )
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
        )
          .returns(Orb::Models::PriceEvaluateResponse)
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
        )
          .returns(
            T.any(
              Orb::Models::PriceModel::UnitPrice,
              Orb::Models::PriceModel::PackagePrice,
              Orb::Models::PriceModel::MatrixPrice,
              Orb::Models::PriceModel::TieredPrice,
              Orb::Models::PriceModel::TieredBpsPrice,
              Orb::Models::PriceModel::BpsPrice,
              Orb::Models::PriceModel::BulkBpsPrice,
              Orb::Models::PriceModel::BulkPrice,
              Orb::Models::PriceModel::ThresholdTotalAmountPrice,
              Orb::Models::PriceModel::TieredPackagePrice,
              Orb::Models::PriceModel::GroupedTieredPrice,
              Orb::Models::PriceModel::TieredWithMinimumPrice,
              Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
              Orb::Models::PriceModel::PackageWithAllocationPrice,
              Orb::Models::PriceModel::UnitWithPercentPrice,
              Orb::Models::PriceModel::MatrixWithAllocationPrice,
              Orb::Models::PriceModel::TieredWithProrationPrice,
              Orb::Models::PriceModel::UnitWithProrationPrice,
              Orb::Models::PriceModel::GroupedAllocationPrice,
              Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
              Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
              Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
              Orb::Models::PriceModel::BulkWithProrationPrice,
              Orb::Models::PriceModel::GroupedTieredPackagePrice,
              Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
              Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::PriceModel::CumulativeGroupedBulkPrice
            )
          )
      end
      def fetch(price_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
