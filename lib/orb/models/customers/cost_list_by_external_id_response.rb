# frozen_string_literal: true

module Orb
  module Models
    module Customers
      class CostListByExternalIDResponse < Orb::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::Customers::CostListByExternalIDResponse::Data>]
        required :data, -> { Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data] }

        # @!parse
        #   # @param data [Array<Orb::Models::Customers::CostListByExternalIDResponse::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Data < Orb::BaseModel
          # @!attribute per_price_costs
          #
          #   @return [Array<Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost>]
          required :per_price_costs,
                   -> { Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost] }

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

          # @!parse
          #   # @param per_price_costs [Array<Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost>]
          #   # @param subtotal [String]
          #   # @param timeframe_end [Time]
          #   # @param timeframe_start [Time]
          #   # @param total [String]
          #   #
          #   def initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          class PerPriceCost < Orb::BaseModel
            # @!attribute price
            #   The price object
            #
            #   @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
            required :price, union: -> { Orb::Models::Price }

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

            # @!parse
            #   # @param price [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
            #   # @param price_id [String]
            #   # @param subtotal [String]
            #   # @param total [String]
            #   # @param quantity [Float, nil]
            #   #
            #   def initialize(price:, price_id:, subtotal:, total:, quantity: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end
    end
  end
end
