# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @example
      # ```ruby
      # cost_list_by_external_id_response => {
      #   data: -> { Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data] === _1 }
      # }
      # ```
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

        # @example
        # ```ruby
        # data => {
        #   per_price_costs: -> { Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost] === _1 },
        #   subtotal: String,
        #   timeframe_end: Time,
        #   timeframe_start: Time,
        #   total: String
        # }
        # ```
        class Data < Orb::BaseModel
          # @!attribute per_price_costs
          #
          #   @return [Array<Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost>]
          required :per_price_costs,
                   -> {
                     Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost]
                   }

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

          # @example
          # ```ruby
          # per_price_cost => {
          #   price: Orb::Models::Price,
          #   subtotal: String,
          #   total: String,
          #   quantity: Float
          # }
          # ```
          class PerPriceCost < Orb::BaseModel
            # @!attribute price
            #   The Price resource represents a price that can be billed on a subscription,
            #     resulting in a charge on an invoice in the form of an invoice line item. Prices
            #     take a quantity and determine an amount to bill.
            #
            #     Orb supports a few different pricing models out of the box. Each of these models
            #     is serialized differently in a given Price object. The model_type field
            #     determines the key for the configuration object that is present.
            #
            #     For more on the types of prices, see
            #     [the core concepts documentation](/core-concepts#plan-and-price)
            #
            #   @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice]
            required :price, union: -> { Orb::Models::Price }

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
            #   # @param price [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice]
            #   # @param subtotal [String]
            #   # @param total [String]
            #   # @param quantity [Float, nil]
            #   #
            #   def initialize(price:, subtotal:, total:, quantity: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end
    end
  end
end
