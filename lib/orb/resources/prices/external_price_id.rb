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
        # @return [Orb::Price::Unit, Orb::Price::Package, Orb::Price::Matrix, Orb::Price::Tiered, Orb::Price::TieredBps, Orb::Price::Bps, Orb::Price::BulkBps, Orb::Price::Bulk, Orb::Price::ThresholdTotalAmount, Orb::Price::TieredPackage, Orb::Price::GroupedTiered, Orb::Price::TieredWithMinimum, Orb::Price::TieredPackageWithMinimum, Orb::Price::PackageWithAllocation, Orb::Price::UnitWithPercent, Orb::Price::MatrixWithAllocation, Orb::Price::TieredWithProration, Orb::Price::UnitWithProration, Orb::Price::GroupedAllocation, Orb::Price::GroupedWithProratedMinimum, Orb::Price::GroupedWithMeteredMinimum, Orb::Price::MatrixWithDisplayName, Orb::Price::BulkWithProration, Orb::Price::GroupedTieredPackage, Orb::Price::MaxGroupTieredPackage, Orb::Price::ScalableMatrixWithUnitPricing, Orb::Price::ScalableMatrixWithTieredPricing, Orb::Price::CumulativeGroupedBulk]
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
        # @return [Orb::Price::Unit, Orb::Price::Package, Orb::Price::Matrix, Orb::Price::Tiered, Orb::Price::TieredBps, Orb::Price::Bps, Orb::Price::BulkBps, Orb::Price::Bulk, Orb::Price::ThresholdTotalAmount, Orb::Price::TieredPackage, Orb::Price::GroupedTiered, Orb::Price::TieredWithMinimum, Orb::Price::TieredPackageWithMinimum, Orb::Price::PackageWithAllocation, Orb::Price::UnitWithPercent, Orb::Price::MatrixWithAllocation, Orb::Price::TieredWithProration, Orb::Price::UnitWithProration, Orb::Price::GroupedAllocation, Orb::Price::GroupedWithProratedMinimum, Orb::Price::GroupedWithMeteredMinimum, Orb::Price::MatrixWithDisplayName, Orb::Price::BulkWithProration, Orb::Price::GroupedTieredPackage, Orb::Price::MaxGroupTieredPackage, Orb::Price::ScalableMatrixWithUnitPricing, Orb::Price::ScalableMatrixWithTieredPricing, Orb::Price::CumulativeGroupedBulk]
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
