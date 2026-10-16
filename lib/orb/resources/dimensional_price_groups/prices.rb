# frozen_string_literal: true

module Orb
  module Resources
    class DimensionalPriceGroups
      class Prices
        # Create prices in a dimensional price group. Every price shares `item_id`,
        # `cadence`, `currency`, and `model_type`. Tiered prices also share tier
        # boundaries; each row supplies its own amounts. The request is one transaction.
        #
        # @overload create(dimensional_price_group_id, cadence:, currency:, item_id:, model_type:, prices:, tiers: nil, request_options: {})
        #
        # @param dimensional_price_group_id [String]
        #
        # @param cadence [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::Cadence] Billing cadence for every price
        #
        # @param currency [String] An ISO 4217 currency string for every price.
        #
        # @param item_id [String] The item for every price. Must be the group's billable metric item.
        #
        # @param model_type [Symbol, Orb::Models::DimensionalPriceGroups::PriceCreateParams::ModelType]
        #
        # @param prices [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Price>]
        #
        # @param tiers [Array<Orb::Models::DimensionalPriceGroups::PriceCreateParams::Tier>, nil] Shared tier boundaries. Required for tiered prices and omitted for unit prices.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::DimensionalPriceGroups::PriceCreateResponse]
        #
        # @see Orb::Models::DimensionalPriceGroups::PriceCreateParams
        def create(dimensional_price_group_id, params)
          parsed, options = Orb::DimensionalPriceGroups::PriceCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dimensional_price_groups/%1$s/prices", dimensional_price_group_id],
            body: parsed,
            model: Orb::Models::DimensionalPriceGroups::PriceCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::DimensionalPriceGroups::PriceListParams} for more details.
        #
        # This endpoint returns the prices in a dimensional price group. Subscription
        # overrides are omitted. Archived prices are omitted unless `status` is `archived`
        # or `all`.
        #
        # @overload list(dimensional_price_group_id, cursor: nil, limit: nil, status: nil, request_options: {})
        #
        # @param dimensional_price_group_id [String]
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param status [Symbol, Orb::Models::DimensionalPriceGroups::PriceListParams::Status] active omits archived prices. archived returns only archived prices. all returns
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput>]
        #
        # @see Orb::Models::DimensionalPriceGroups::PriceListParams
        def list(dimensional_price_group_id, params = {})
          parsed, options = Orb::DimensionalPriceGroups::PriceListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["dimensional_price_groups/%1$s/prices", dimensional_price_group_id],
            query: query,
            page: Orb::Internal::Page,
            model: Orb::Price,
            options: options
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
