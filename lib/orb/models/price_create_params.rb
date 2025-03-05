# frozen_string_literal: true

module Orb
  module Models
    class PriceCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute new_floating_price_model
      #
      #   @return [Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice]
      required :new_floating_price_model, union: -> { Orb::Models::NewFloatingPriceModel }

      # @!parse
      #   # @param new_floating_price_model [Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(new_floating_price_model:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
