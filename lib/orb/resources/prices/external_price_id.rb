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
        # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
        #
        # @see Orb::Models::Prices::ExternalPriceIDUpdateParams
        def update(external_price_id, params = {})
          parsed, options = Orb::Models::Prices::ExternalPriceIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["prices/external_price_id/%1$s", external_price_id],
            body: parsed,
            model: Orb::Models::Price,
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
        # @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
        #
        # @see Orb::Models::Prices::ExternalPriceIDFetchParams
        def fetch(external_price_id, params = {})
          @client.request(
            method: :get,
            path: ["prices/external_price_id/%1$s", external_price_id],
            model: Orb::Models::Price,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
