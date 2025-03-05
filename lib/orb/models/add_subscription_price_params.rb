# frozen_string_literal: true

module Orb
  module Models
    class AddSubscriptionPriceParams < Orb::BaseModel
      # @!attribute allocation_price
      #   The definition of a new allocation price to create and add to the subscription.
      #
      #   @return [Orb::Models::NewAllocationPriceModel, nil]
      optional :allocation_price, -> { Orb::Models::NewAllocationPriceModel }, nil?: true

      # @!attribute discounts
      #   [DEPRECATED] Use add_adjustments instead. The subscription's discounts for this
      #     price.
      #
      #   @return [Array<Orb::Models::DiscountOverrideModel>, nil]
      optional :discounts, -> { Orb::ArrayOf[Orb::Models::DiscountOverrideModel] }, nil?: true

      # @!attribute end_date
      #   The end date of the price interval. This is the date that the price will stop
      #     billing on the subscription. If null, billing will end when the phase or
      #     subscription ends.
      #
      #   @return [Time, nil]
      optional :end_date, Time, nil?: true

      # @!attribute external_price_id
      #   The external price id of the price to add to the subscription.
      #
      #   @return [String, nil]
      optional :external_price_id, String, nil?: true

      # @!attribute maximum_amount
      #   [DEPRECATED] Use add_adjustments instead. The subscription's maximum amount for
      #     this price.
      #
      #   @return [String, nil]
      optional :maximum_amount, String, nil?: true

      # @!attribute minimum_amount
      #   [DEPRECATED] Use add_adjustments instead. The subscription's minimum amount for
      #     this price.
      #
      #   @return [String, nil]
      optional :minimum_amount, String, nil?: true

      # @!attribute plan_phase_order
      #   The phase to add this price to.
      #
      #   @return [Integer, nil]
      optional :plan_phase_order, Integer, nil?: true

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

      # @!attribute start_date
      #   The start date of the price interval. This is the date that the price will start
      #     billing on the subscription. If null, billing will start when the phase or
      #     subscription starts.
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

      # @!parse
      #   # @param allocation_price [Orb::Models::NewAllocationPriceModel, nil]
      #   # @param discounts [Array<Orb::Models::DiscountOverrideModel>, nil]
      #   # @param end_date [Time, nil]
      #   # @param external_price_id [String, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param plan_phase_order [Integer, nil]
      #   # @param price [Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice, nil]
      #   # @param price_id [String, nil]
      #   # @param start_date [Time, nil]
      #   #
      #   def initialize(
      #     allocation_price: nil,
      #     discounts: nil,
      #     end_date: nil,
      #     external_price_id: nil,
      #     maximum_amount: nil,
      #     minimum_amount: nil,
      #     plan_phase_order: nil,
      #     price: nil,
      #     price_id: nil,
      #     start_date: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
