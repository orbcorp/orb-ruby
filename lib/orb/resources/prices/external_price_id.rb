# frozen_string_literal: true

module Orb
  module Resources
    class Prices
      class ExternalPriceID
        # This endpoint allows you to update the `metadata` property on a price. If you
        #   pass null for the metadata value, it will clear any existing metadata for that
        #   price.
        #
        # @param external_price_id [String]
        #
        # @param params [Orb::Models::Prices::ExternalPriceIDUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
        #
        def update(external_price_id, params = {})
          parsed, options = Orb::Models::Prices::ExternalPriceIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["prices/external_price_id/%0s", external_price_id],
            body: parsed,
            model: Orb::Models::PriceModel,
            options: options
          )
        end

        # This endpoint returns a price given an external price id. See the
        #   [price creation API](/api-reference/price/create-price) for more information
        #   about external price aliases.
        #
        # @param external_price_id [String]
        #
        # @param params [Orb::Models::Prices::ExternalPriceIDFetchParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
        #
        def fetch(external_price_id, params = {})
          @client.request(
            method: :get,
            path: ["prices/external_price_id/%0s", external_price_id],
            model: Orb::Models::PriceModel,
            options: params[:request_options]
          )
        end

        # @param client [Orb::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
