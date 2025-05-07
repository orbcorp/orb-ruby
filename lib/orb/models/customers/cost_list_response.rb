# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Costs#list
      class CostListResponse < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::Customers::CostListResponse::Data>]
        required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CostListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::Models::Customers::CostListResponse::Data>]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute per_price_costs
          #
          #   @return [Array<Orb::Models::Customers::CostListResponse::Data::PerPriceCost>]
          required :per_price_costs,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CostListResponse::Data::PerPriceCost] }

          # @!attribute subtotal
          #   Total costs for the timeframe, excluding any minimums and discounts.
          #
          #   @return [String]
          required :subtotal, String

          # @!attribute timeframe_end
          #
          #   @return [Time]
          required :timeframe_end, Time

          # @!attribute timeframe_start
          #
          #   @return [Time]
          required :timeframe_start, Time

          # @!attribute total
          #   Total costs for the timeframe, including any minimums and discounts.
          #
          #   @return [String]
          required :total, String

          # @!method initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:)
          #   @param per_price_costs [Array<Orb::Models::Customers::CostListResponse::Data::PerPriceCost>]
          #
          #   @param subtotal [String] Total costs for the timeframe, excluding any minimums and discounts.
          #
          #   @param timeframe_end [Time]
          #
          #   @param timeframe_start [Time]
          #
          #   @param total [String] Total costs for the timeframe, including any minimums and discounts.

          class PerPriceCost < Orb::Internal::Type::BaseModel
            # @!attribute price
            #   The price object
            #
            #   @return [Orb::Price::Unit, Orb::Price::Package, Orb::Price::Matrix, Orb::Price::Tiered, Orb::Price::TieredBps, Orb::Price::Bps, Orb::Price::BulkBps, Orb::Price::Bulk, Orb::Price::ThresholdTotalAmount, Orb::Price::TieredPackage, Orb::Price::GroupedTiered, Orb::Price::TieredWithMinimum, Orb::Price::TieredPackageWithMinimum, Orb::Price::PackageWithAllocation, Orb::Price::UnitWithPercent, Orb::Price::MatrixWithAllocation, Orb::Price::TieredWithProration, Orb::Price::UnitWithProration, Orb::Price::GroupedAllocation, Orb::Price::GroupedWithProratedMinimum, Orb::Price::GroupedWithMeteredMinimum, Orb::Price::MatrixWithDisplayName, Orb::Price::BulkWithProration, Orb::Price::GroupedTieredPackage, Orb::Price::MaxGroupTieredPackage, Orb::Price::ScalableMatrixWithUnitPricing, Orb::Price::ScalableMatrixWithTieredPricing, Orb::Price::CumulativeGroupedBulk]
            required :price, union: -> { Orb::Price }

            # @!attribute price_id
            #   The price the cost is associated with
            #
            #   @return [String]
            required :price_id, String

            # @!attribute subtotal
            #   Price's contributions for the timeframe, excluding any minimums and discounts.
            #
            #   @return [String]
            required :subtotal, String

            # @!attribute total
            #   Price's contributions for the timeframe, including minimums and discounts.
            #
            #   @return [String]
            required :total, String

            # @!attribute quantity
            #   The price's quantity for the timeframe
            #
            #   @return [Float, nil]
            optional :quantity, Float, nil?: true

            # @!method initialize(price:, price_id:, subtotal:, total:, quantity: nil)
            #   @param price [Orb::Price::Unit, Orb::Price::Package, Orb::Price::Matrix, Orb::Price::Tiered, Orb::Price::TieredBps, Orb::Price::Bps, Orb::Price::BulkBps, Orb::Price::Bulk, Orb::Price::ThresholdTotalAmount, Orb::Price::TieredPackage, Orb::Price::GroupedTiered, Orb::Price::TieredWithMinimum, Orb::Price::TieredPackageWithMinimum, Orb::Price::PackageWithAllocation, Orb::Price::UnitWithPercent, Orb::Price::MatrixWithAllocation, Orb::Price::TieredWithProration, Orb::Price::UnitWithProration, Orb::Price::GroupedAllocation, Orb::Price::GroupedWithProratedMinimum, Orb::Price::GroupedWithMeteredMinimum, Orb::Price::MatrixWithDisplayName, Orb::Price::BulkWithProration, Orb::Price::GroupedTieredPackage, Orb::Price::MaxGroupTieredPackage, Orb::Price::ScalableMatrixWithUnitPricing, Orb::Price::ScalableMatrixWithTieredPricing, Orb::Price::CumulativeGroupedBulk] The price object
            #
            #   @param price_id [String] The price the cost is associated with
            #
            #   @param subtotal [String] Price's contributions for the timeframe, excluding any minimums and discounts.
            #
            #   @param total [String] Price's contributions for the timeframe, including minimums and discounts.
            #
            #   @param quantity [Float, nil] The price's quantity for the timeframe
          end
        end
      end
    end
  end
end
