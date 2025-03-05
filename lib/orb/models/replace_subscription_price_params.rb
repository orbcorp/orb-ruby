# frozen_string_literal: true

module Orb
  module Models
    class ReplaceSubscriptionPriceParams < Orb::BaseModel
      # @!attribute replaces_price_id
      #   The id of the price on the plan to replace in the subscription.
      #
      #   @return [String]
      required :replaces_price_id, String

      # @!attribute allocation_price
      #   The definition of a new allocation price to create and add to the subscription.
      #
      #   @return [Orb::Models::NewAllocationPriceModel, nil]
      optional :allocation_price, -> { Orb::Models::NewAllocationPriceModel }, nil?: true

      # @!attribute discounts
      #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for the
      #     replacement price.
      #
      #   @return [Array<Orb::Models::DiscountOverrideModel>, nil]
      optional :discounts, -> { Orb::ArrayOf[Orb::Models::DiscountOverrideModel] }, nil?: true

      # @!attribute external_price_id
      #   The external price id of the price to add to the subscription.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute fixed_price_quantity
      #   The new quantity of the price, if the price is a fixed price.
      #
      #   @return [Float, nil]
      optional :fixed_price_quantity, Float, nil?: true

      # @!attribute maximum_amount
      #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
      #     the replacement price.
      #
      #   @return [String, nil]
      optional :maximum_amount, String, nil?: true

      # @!attribute minimum_amount
      #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
      #     the replacement price.
      #
      #   @return [String, nil]
      optional :minimum_amount, String, nil?: true

      # @!attribute price
      #   The definition of a new price to create and add to the subscription.
      #
      #   @return [Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice, nil]
      optional :price, union: -> { Orb::Models::NewSubscriptionPriceModel }, nil?: true

      # @!attribute price_id
      #   The id of the price to add to the subscription.
      #
      #   @return [String, nil]
      optional :price_id, String, nil?: true

      # @!parse
      #   # @param replaces_price_id [String]
      #   # @param allocation_price [Orb::Models::NewAllocationPriceModel, nil]
      #   # @param discounts [Array<Orb::Models::DiscountOverrideModel>, nil]
      #   # @param external_price_id [String, nil]
      #   # @param fixed_price_quantity [Float, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param price [Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice, nil]
      #   # @param price_id [String, nil]
      #   #
      #   def initialize(
      #     replaces_price_id:,
      #     allocation_price: nil,
      #     discounts: nil,
      #     external_price_id: nil,
      #     fixed_price_quantity: nil,
      #     maximum_amount: nil,
      #     minimum_amount: nil,
      #     price: nil,
      #     price_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
