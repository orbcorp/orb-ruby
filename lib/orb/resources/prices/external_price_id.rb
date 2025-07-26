# frozen_string_literal: true

module Orb
  module Resources
    class Prices
      class ExternalPriceID
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Prices::ExternalPriceIDUpdateParams} for more details.
        #
        # This endpoint allows you to update the `metadata` property on a price. If you
        # pass null for the metadata value, it will clear any existing metadata for that
        # price.
        #
        # @overload update(external_price_id, metadata: nil, request_options: {})
        #
        # @param external_price_id [String]
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds]
        #
        # @see Orb::Models::Prices::ExternalPriceIDUpdateParams
        def update(external_price_id, params = {})
          parsed, options = Orb::Prices::ExternalPriceIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["prices/external_price_id/%1$s", external_price_id],
            body: parsed,
            model: Orb::Price,
            options: options
          )
        end

        # This endpoint returns a price given an external price id. See the
        # [price creation API](/api-reference/price/create-price) for more information
        # about external price aliases.
        #
        # @overload fetch(external_price_id, request_options: {})
        #
        # @param external_price_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds]
        #
        # @see Orb::Models::Prices::ExternalPriceIDFetchParams
        def fetch(external_price_id, params = {})
          @client.request(
            method: :get,
            path: ["prices/external_price_id/%1$s", external_price_id],
            model: Orb::Price,
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
